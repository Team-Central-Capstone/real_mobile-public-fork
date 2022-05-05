import 'dart:convert';

import 'package:after_layout/after_layout.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/data/models/response_get_image/response_get_image.dart';
import 'package:real/logic/bloc/user_profile_bloc.dart';
import 'package:real/logic/controllers/firestore_db.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/router/router.gr.dart';
import 'package:real/presentation/widgets/auth_text_button.dart';
import 'package:real/presentation/widgets/gradient_text.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  late Util _mUtil;
  late UserProfileBloc _userProfileBloc;

  late String? _fbId;
  late DatabaseMethods _firestoreDb;

  //dummy test user Danerys Targeryan
  ResponseGetImage? _dummyUser = ResponseGetImage();

  @override
  void initState() {
    super.initState();

    // Get singleton Util instance
    _mUtil = getIt<Util>();

    // Get singleton UserProfileBloc instance
    _userProfileBloc = getIt<UserProfileBloc>();

    // Get singleton Database Methods instance
    _firestoreDb = getIt<DatabaseMethods>();
    // Get firebaseId
    _fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      try {
        // setState(() async {
        _mUtil.loadingDialog(context, true);
        await _userProfileBloc
            .fetchUserProfileImageWithData("6QUsr0aeWih0Z3Zb7ibbBPLjEk73")
            // .fetchUserProfileImageWithData("nCBkw9r9ItcpEc9KAvd2llgfmeJ3")
            .then((value) {
          setState(() {
            _dummyUser = value;
          });
        });
        _mUtil.loadingDialog(context, false);
        // });
      } catch (e) {
        print(e.toString());
      }
    });
    // Get a dummy test user Danerys Targeryan
    // Future.delayed(Duration.zero, () async {

    // });
  }

  _createChatRoomAndStartConversation(String chatWithUserId) {
    String chatRoomId = getChatRoomId(chatWithUserId, _fbId!);

    List<String> usersIds = [chatWithUserId, _fbId!];
    Map<String, dynamic> chatRoomMap = {
      "users": usersIds,
      "chatroomId": chatRoomId
    };

    _firestoreDb.createChatRoom(chatRoomId, chatRoomMap);

    AutoRouter.of(context).push(ConversationRoute(
        chatRoomId: chatRoomId,
        fbId: _fbId!,
        name: _dummyUser!.user!.displayName ?? 'Conversation'));
  }

  getChatRoomId(String a, String b) {
    if (a.substring(0, 1).codeUnitAt(0) > b.substring(0, 1).codeUnitAt(0)) {
      return "$b\_$a";
    } else {
      return "$a\_$b";
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  "Macthed",
                  style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                        color: Colors.white70,
                        fontSize: 32,
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
              body: ListView(
                children: [
                  const Divider(
                    thickness: 2,
                    height: 30,
                  ),
                  // if my dummy user is found
                  (_dummyUser!.user != null)
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Hero(
                            tag: 'card',
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                            child: (_dummyUser?.image != null)
                                                ?
                                                // ? CircleAvatar(
                                                //     radius: 30.0,
                                                //     child:

                                                Container(
                                                    height: 60.0,
                                                    width: 60.0,
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.memory(
                                                      base64Decode(
                                                          _dummyUser!.image!),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )
                                                // ,
                                                // )
                                                : CircleAvatar(
                                                    backgroundColor:
                                                        Colors.grey[100],
                                                    radius: 60.0,
                                                  ),
                                          ),
                                        ),
                                        GradientText(
                                          _dummyUser!.user!.firstName! +
                                              ' ' +
                                              _dummyUser!.user!.lastName!,
                                          gradientColors: const [
                                            topGradientColor,
                                            Colors.grey
                                          ],
                                          style: GoogleFonts.encodeSansSc(
                                            textStyle: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 18.0),
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                _createChatRoomAndStartConversation(
                                                    _dummyUser!
                                                        .user!.firebaseUserId!);
                                              },
                                              icon: const Icon(
                                                Icons.message_sharp,
                                                color: topGradientColor,
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  PageRouteBuilder(
                                                    opaque: false,
                                                    pageBuilder: (_, __, ___) =>
                                                        SingleFlipCard(
                                                      id: 'chat',
                                                      dummyUser: _dummyUser!,
                                                    ),
                                                  ),
                                                );
                                              },
                                              icon: const Icon(
                                                Icons.info_outline_rounded,
                                                color: topGradientColor,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                  const Divider(
                    thickness: 2,
                    height: 30,
                  )
                ],
              )),
        ));
  }
}

class SingleFlipCard extends StatefulWidget {
  final id;
  final ResponseGetImage? dummyUser;
  SingleFlipCard({@required this.id, required this.dummyUser});

  @override
  SingleFlipCardState createState() => SingleFlipCardState();
}

class SingleFlipCardState extends State<SingleFlipCard>
    with AfterLayoutMixin<SingleFlipCard> {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  void afterFirstLayout(BuildContext context) {
    cardKey.currentState!.toggleCard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: widget.id,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(40),
              child: FlipCard(
                key: cardKey,
                flipOnTouch: false,
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: const SizedBox(height: 0),
                ),
                back: Container(
                    child: ClipRRect(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: (widget.dummyUser!.image != null)
                              ?
                              // ? CircleAvatar(
                              //     radius: 30.0,
                              //     child:

                              Container(
                                  height: 150.0,
                                  width: 150.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.memory(
                                    base64Decode(widget.dummyUser!.image!),
                                    fit: BoxFit.cover,
                                  ),
                                )
                              // ,
                              // )
                              : CircleAvatar(
                                  backgroundColor: Colors.grey[100],
                                  radius: 60.0,
                                ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GradientText(
                        widget.dummyUser!.user!.firstName! +
                            ' ' +
                            widget.dummyUser!.user!.lastName!,
                        gradientColors: const [topGradientColor, Colors.grey],
                        style: GoogleFonts.encodeSansSc(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GradientText(
                                  'Height:  ',
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                GradientText(
                                  widget.dummyUser!.user!.heightInches!
                                          .toString() +
                                      ' in',
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                GradientText(
                                  'BirthDay:  ',
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                GradientText(
                                  DateFormat('MMM dd, yyyy')
                                      .format(
                                          widget.dummyUser!.user!.birthdate!)
                                      .toString(),
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                GradientText(
                                  'Matching Score:  ',
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                GradientText(
                                  '40.92%',
                                  gradientColors: const [
                                    topGradientColor,
                                    Colors.grey
                                  ],
                                  style: GoogleFonts.encodeSansSc(
                                    textStyle: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AuthTextButton(
                          text: 'CLOSE',
                          onPressed: () {
                            Navigator.pop(context);
                          })
                    ],
                  ),
                )),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
