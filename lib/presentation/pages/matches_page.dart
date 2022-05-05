import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/matches_model/matches_model.dart';
import 'package:real/logic/bloc/matches_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/widgets/error.dart';
import 'package:real/presentation/widgets/loading.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({Key? key}) : super(key: key);

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage>
    with TickerProviderStateMixin {
  // Initialize list of Cards
  late List<MatchesModel> realMatches;

  // late objects for initState
  late MatchesBloc _matchesBloc;
  late Util _mUtil;
  late String? _fbId;

  @override
  void initState() {
    // Get singleton Util instance
    _mUtil = getIt<Util>();
    // Get firebaseId
    _fbId = getIt<AuthCubit>().getAuthUserModel()?.id;
    // Get it matches bloc
    _matchesBloc = getIt<MatchesBloc>();

    setState(() {
      realMatches = [];
    });

    final _endTime = DateTime.now().toUtc();
    final _newDate = DateTime(_endTime.year, _endTime.month, _endTime.day - 2);
    final _startTime = _newDate.toUtc();

    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      // Run image future
      // Future.delayed(Duration.zero, () async {
      try {
        _mUtil.loadingDialog(context, true);

        await _matchesBloc
            .fetchMatchesList(
                _fbId!, _startTime.toString(), _endTime.toString())
            .then((value) {
          setState(() {
            realMatches = value;
          });
        });

        _mUtil.loadingDialog(context, false);
      } catch (e) {
        print(e.toString());
      }
    });
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Container(
        // Background UI
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              topGradientColor,
              bottomGradientColor,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            transform: GradientRotation(3.14 / 4),
          ),
        ),
        child: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ThemeData().colorScheme.copyWith(
                    primary: mediumGradientColor,
                  ),
            ),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "Find Match",
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                        color: Colors.white70,
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                automaticallyImplyLeading: true,
                leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white70,
                    ),
                    onPressed: () {
                      context.router.pop();
                    }),
                centerTitle: true,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        transform: GradientRotation(3.14 / 4),
                        colors: <Color>[topGradientColor, bottomGradientColor]),
                  ),
                ),
              ),
              backgroundColor: Colors.transparent,
              body: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: TinderSwapCard(
                    swipeUp: true,
                    swipeDown: true,
                    orientation: AmassOrientation.BOTTOM,
                    totalNum: realMatches.length,
                    stackNum: 3,
                    swipeEdge: 4.0,
                    maxWidth: MediaQuery.of(context).size.width * 0.9,
                    maxHeight: MediaQuery.of(context).size.width * 0.9,
                    minWidth: MediaQuery.of(context).size.width * 0.8,
                    minHeight: MediaQuery.of(context).size.width * 0.8,
                    cardBuilder: (context, index) => realMatches[index] != null
                        ? _getCard(realMatches[index], index)
                        : const Card(),

                    // realMatches[index],
                    cardController: controller = CardController(),
                    swipeUpdateCallback:
                        (DragUpdateDetails details, Alignment align) {
                      /// Get swiping card's alignment
                      if (align.x < 0) {
                        //Card is LEFT swiping
                        // ScaffoldMessenger.of(context)
                        //     .showSnackBar(const SnackBar(
                        //   behavior: SnackBarBehavior.floating,
                        //   content: Text('Ignored'),
                        //   backgroundColor: Colors.red,
                        // ));
                      } else if (align.x > 0) {
                        //Card is RIGHT swiping
                        // ScaffoldMessenger.of(context)
                        //     .showSnackBar(const SnackBar(
                        //   behavior: SnackBarBehavior.floating,
                        //   content: Text('Liked'),
                        //   backgroundColor: Colors.green,
                        // ));
                      }
                    },
                    swipeCompleteCallback:
                        (CardSwipeOrientation orientation, int index) {
                      /// Get orientation & index of swiped card!
                      if (orientation == CardSwipeOrientation.LEFT || orientation == CardSwipeOrientation.UP) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text('Ignored'),
                          backgroundColor: Colors.red,
                        ));
                        
                        print('Ignored Firebase Id : '+realMatches[index].user2!.firebaseUserId!);

                      }

                      if (orientation == CardSwipeOrientation.RIGHT || orientation == CardSwipeOrientation.DOWN) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text('Liked'),
                          backgroundColor: Colors.green,
                        ));
                        
                        print('Liked Firebase Id : '+realMatches[index].user2!.firebaseUserId!);

                        _matchesBloc.postMatchApproval(realMatches[index].user1!.firebaseUserId!, realMatches[index].user2!.firebaseUserId!);

                      }
                    },
                  ),
                ),
              ),
            )));
  }

  Widget _getCard(MatchesModel mm, int index) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: topGradientColor,
      child: SizedBox(
        width: 300,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              CircleAvatar(
                backgroundColor: bottomGradientColor,
                radius: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Match Percentage',
                        style: GoogleFonts.encodeSansSc(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.w500),
                        )),
                    Text(
                        (mm.weightedMatchPercentage! * 100.0)
                                .toStringAsFixed(2) +
                            ' %',
                        style: GoogleFonts.encodeSansSc(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                ), //CircleAvatar
              ), //CircleAvatar
              const SizedBox(
                height: 10,
              ), //SizedBox
              Text(
                'Matched User ' + index.toString(),
                style: GoogleFonts.encodeSansSc(
                  textStyle: TextStyle(
                      color: Colors.white70,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      fontWeight: FontWeight.w500),
                ), //Textstyle
              ), //Text//SizedBox
            ],
          ), //Column
        ), //Padding
      ), //SizedBox
    );
  }
}
