import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/data/dataproviders/api_response.dart';
import 'package:real/data/models/question_model/question_model.dart';
import 'package:real/logic/bloc/survey_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/presentation/widgets/error.dart';
import 'package:real/presentation/widgets/loading.dart';
import 'package:real/presentation/widgets/survey_stepper.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  // late objects for initState
  late SurveyBloc _surveyBloc;

  @override
  void initState() {
    super.initState();

    _surveyBloc = getIt<SurveyBloc>();
    // Fetch from web server
    _surveyBloc.fetchSurvey();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _surveyBloc = getIt<SurveyBloc>();
    // Fetch from web server
    _surveyBloc.fetchSurvey();
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
                "Survey",
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
            body: StreamBuilder<ApiResponse<List<QuestionModel>>>(
              stream: _surveyBloc.surveyStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  switch (snapshot.data!.status) {
                    case Status.loading:
                      return Loading(loadingMessage: snapshot.data!.message);
                      break;
                    case Status.completed:
                      print('this is the data length:  ' +
                          snapshot.data!.data!.length.toString());
                      print('this is the data:  ' +
                          snapshot.data!.data.toString());
                      return ListView(
                        children: [
                          Center(
                            child: Lottie.asset(
                              'assets/lottie/tell_us_more.json',
                              height: 120,
                              width: 300,
                              repeat: true,
                              reverse: false,
                              animate: true,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2.0),
                            child: Center(
                              child: Text(
                                "Help us looking a real matching score",
                                style: GoogleFonts.pacifico(
                                  textStyle: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Survey Must Be Completed To Proceed*",
                              style: GoogleFonts.encodeSansSc(
                                textStyle: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                            height: 30,
                          ),
                          SingleChildScrollView(
                              child: SurveyStepper(
                            surveyData: snapshot.data!.data!,
                          )),
                        ],
                      );
                      break;
                    case Status.error:
                      return ErrorOfAPI(
                        errorMessage: snapshot.data!.message,
                        onRetryPressed: () => _surveyBloc.fetchSurvey(),
                      );
                      break;
                  }
                }
                return Container();
              },
            )),
      ),
    );
  }

  @override
  void dispose() {
    // _surveyBloc.dispose();
    super.dispose();
  }
}
