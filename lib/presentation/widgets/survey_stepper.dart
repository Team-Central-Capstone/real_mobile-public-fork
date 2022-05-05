import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/enums.dart';
import 'package:real/data/models/question_model/question_model.dart';
import 'package:real/data/models/survey_response/survey_response.dart';
import 'package:real/logic/bloc/survey_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/router/router.gr.dart';
import 'package:real/presentation/widgets/loading.dart';

/// Gauge imports
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SurveyStepper extends StatefulWidget {
  final List<QuestionModel> surveyData;
  const SurveyStepper({Key? key, required this.surveyData}) : super(key: key);

  @override
  State<SurveyStepper> createState() => _SurveyStepperState();
}

class _SurveyStepperState extends State<SurveyStepper> {
  // selected choices
  late int _chosenAnswer;
  late List<int>? _chosenAnswers;
  late double _weightOfResponse;

  // current step index
  late int _currentStep;

  // List for questions as steps
  List<Step> _surveySteps = [];
  List<int> _surveyStepIds = [];

  // Getter for steps so doesn't update the whole state and call stream again
  List<Step> get getSurveySteps => _surveySteps;
  // Getter for stepIds so doesn't update the whole state and call stream again
  List<int> get getSurveyStepIds => _surveyStepIds;
  //
  int get getResponseWeight => _getWeightFromDraggable(_weightOfResponse);

  // Current Question ID & Response
  late SurveyResponse? _quesResponse;

  // late objects for initState
  late SurveyBloc _surveyBloc;

  late String? _fbId;

  @override
  void initState() {
    super.initState();

    _surveyBloc = getIt<SurveyBloc>();
    // Get firebaseId
    _fbId = getIt<AuthCubit>().getAuthUserModel()?.id;

    // current step index
    _currentStep = 0;

    // set nothing for chosenAnswer
    _chosenAnswer = -1;
    _chosenAnswers = [];
    // set weightage value
    _weightOfResponse = 0;

    // set Response to null
    _quesResponse = null;
  }

  /// This function will be triggered when a step is tapped
  _stepTapped(int step) {
    setState(() {
      _currentStep = step;
      // print(step);
    });
  }

  /// This function will be called when the continue button is tapped
  _stepContinue() async {
    if (_quesResponse != null && getSurveyStepIds[_currentStep] != null) {
      // patch response
      var res = await _surveyBloc.patchSurveyResponse(
          _quesResponse!, _fbId!, getSurveyStepIds[_currentStep]);
      if (res == null) {
        throw Exception('unable to patch response');
      }
    }

    setState(() {
      // If default selection print error
      if (_quesResponse == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            content: Text("Please select at least one answer"),
            backgroundColor: Colors.redAccent,
          ),
        );
      } else if (_currentStep == getSurveySteps.length - 1) {
        AutoRouter.of(context).push(const HomeRoute());
      }

      // If user selected then update current step
      else {
        _currentStep < getSurveySteps.length - 1
            ? _currentStep += 1
            : _currentStep = 0;
      }

      // Set default selection values
      _chosenAnswer = -1;
      _chosenAnswers = [];
      _weightOfResponse = 0;

      // set Response to null
      _quesResponse = null;
    });
    // print(_currentStep);
  }

  /// This function will be called when the cancel button is tapped
  _stepCancel() {
    setState(() {
      _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
      // print(_currentStep);
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildSurvey(widget.surveyData);
  }

  /// Returns complete survey
  Widget _buildSurvey(List<QuestionModel> data) {
    // create fresh steps list
    List<Step> _newSteps = [];
    List<int> _newStepIds = [];
    // loop through data and add to fresh steps list
    for (int i = 0; i < data.length; i += 1) {
      // create step
      _newStepIds.add(data[i].id!);
      _newSteps.add(
        Step(
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                data[i].questionTypeString!,
                style: GoogleFonts.encodeSansSc(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
          title: Text(
            data[i].questionText!,
            style: GoogleFonts.encodeSansSc(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          isActive: _currentStep >= 0,
          state: _currentStep >= i ? StepState.complete : StepState.disabled,
          content: _buildAnswerColumn(data[i]),
        ),
      );
    }
    // update state of surveySteps
    setState(() {
      _surveySteps = _newSteps;
      _surveyStepIds = _newStepIds;
    });
    // if not empty go build questions else show loading
    return getSurveySteps.isNotEmpty
        ? _buildQuestions()
        : const Loading(
            loadingMessage: "Loading Survey",
          );
  }

  /// Returns questions stepper
  Widget _buildQuestions() {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        child: Stepper(
          steps: getSurveySteps,
          // vertical or horizontial
          type: StepperType.vertical,
          physics: const ScrollPhysics(),
          currentStep: _currentStep,
          onStepTapped: (step) => _stepTapped(step),
          onStepContinue: _stepContinue,
          onStepCancel: _stepCancel,
        ),
      ),
    );
  }

  /// Returns Content Column containg weightage gauge
  Widget _buildAnswerColumn(QuestionModel data) {
    return Column(
      children: [
        _buildAnswerView(data),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text(
                "How Strong You Feel About This:",
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.encodeSansSc(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
        _buildIconWidgetPointer(context),
      ],
    );
  }

  /// Returns the icon widget pointer sample.
  Widget _buildIconWidgetPointer(BuildContext context) {
    return SizedBox(
        height: 60,
        child: SfLinearGauge(
            showTicks: false,
            showLabels: false,
            animateAxis: true,
            axisTrackStyle: const LinearAxisTrackStyle(
                thickness: 24,
                color: Colors.white,
                gradient: LinearGradient(colors: [
                  // Color.fromARGB(255, 255, 95, 95),
                  // Color.fromARGB(255, 226, 226, 0),
                  // Color.fromARGB(255, 99, 185, 0)
                  lightestGradientColor,
                  lightestGradientColor,
                  topGradientColor,
                  mediumGradientColor,
                  bottomGradientColor,
                  bottomGradientColor
                ])),
            orientation: LinearGaugeOrientation.horizontal,
            markerPointers: <LinearMarkerPointer>[
              LinearWidgetPointer(
                value: _weightOfResponse,
                onChanged: (dynamic value) {
                  setState(() {
                    _weightOfResponse = value as double;
                    _quesResponse = _quesResponse?.copyWith(
                        userSurveyResponseWeight: getResponseWeight);
                  });
                },
                child: Container(
                    width: 32,
                    height: 32,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 255, 255, 255),
                        ]),
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        shape: BoxShape.circle),
                    child: const Center(
                        child: Icon(
                      Icons.thumb_up_rounded,
                      size: 20,
                      color: mediumGradientColor,
                    ))),
              )
            ]));
  }

  /// Returns {1,2 or 3} for draggable double of 0 to 100
  int _getWeightFromDraggable(double weight) {
    if (weight <= 33.3) {
      return 1;
    } else if (weight > 33.3 && weight < 66.9) {
      return 2;
    } else {
      return 3;
    }
  }

  /// Returns answer view with wraps depending upon cases
  Widget _buildAnswerView(QuestionModel ques) {
    switch (ques.questionType) {
      // Single Choice
      case 2:
        final List<Widget> chips = [];
        for (int i = 0; i < ques.answers!.length; i++) {
          final FilterChip filterChip = FilterChip(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            selected: (ques.answers![i].id == _chosenAnswer) ? true : false,
            showCheckmark: false,
            tooltip: "Select Answer: " + ques.answers![i].answerText!,
            label: Text(
              ques.answers![i].answerText!,
              style: GoogleFonts.encodeSansSc(
                textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            elevation: 10,
            pressElevation: 5,
            shadowColor: Colors.teal,
            backgroundColor: Colors.white70,
            selectedColor: topGradientColor,
            onSelected: (bool selected) {
              setState(() {
                _chosenAnswer = ques.answers![i].id!;

                _quesResponse = SurveyResponse(
                    answerIds: [_chosenAnswer],
                    userSurveyResponseWeight: getResponseWeight);
              });
            },
          );

          chips.add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: filterChip,
          ));
        }

        return Wrap(
          // shrinkWrap: true,
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 0.0, // gap between lines

          // scrollDirection: Axis.horizontal,
          children: chips,
        );
        break;

      // Multiple Choice
      case 3:
        final List<Widget> chips = [];
        for (int i = 0; i < ques.answers!.length; i++) {
          final FilterChip filterChip = FilterChip(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            selected: (_chosenAnswers != null && _chosenAnswers!.isNotEmpty)
                ? _chosenAnswers!.contains(ques.answers![i].id)
                : false,
            showCheckmark: false,
            tooltip: "Select Answer: " + ques.answers![i].answerText!,
            label: Text(
              ques.answers![i].answerText!,
              style: GoogleFonts.encodeSansSc(
                textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // padding: EdgeInsets.symmetric(
            //     horizontal: MediaQuery.of(context).size.width / 8, vertical: 10.0),
            // avatar: _mUtil.getGenderImage(userGenders[i]),
            elevation: 10,
            pressElevation: 5,
            shadowColor: Colors.teal,
            backgroundColor: Colors.white70,
            selectedColor: topGradientColor,
            onSelected: (bool selected) {
              setState(() {
                // _chosenAnswer = ques.answers![i].id!;
                _chosenAnswers!.contains(ques.answers![i].id)
                    ? _chosenAnswers!.remove(ques.answers![i].id!)
                    : _chosenAnswers!.add(ques.answers![i].id!);

                _quesResponse = SurveyResponse(
                    answerIds: _chosenAnswers,
                    userSurveyResponseWeight: getResponseWeight);
              });
            },
          );

          chips.add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: filterChip,
          ));
        }

        return Wrap(
          // shrinkWrap: true,
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 0.0, // gap between lines

          // scrollDirection: Axis.horizontal,
          children: chips,
        );
        break;
      // Numeric Choice
      case 4:
        return Container();
        break;
      // YesNo Choice
      case 5:
        final List<Widget> chips = [];
        final List<Choice> yesNo = [Choice.yes, Choice.no];
        for (int i = 0; i < yesNo.length; i++) {
          final FilterChip filterChip = FilterChip(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            selected: (yesNo[i].id == _chosenAnswer) ? true : false,
            showCheckmark: false,
            tooltip: "Select Answer: " + yesNo[i].name,
            label: Text(
              yesNo[i].name,
              style: GoogleFonts.encodeSansSc(
                textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            // padding: EdgeInsets.symmetric(
            //     horizontal: MediaQuery.of(context).size.width / 8, vertical: 10.0),
            // avatar: _mUtil.getGenderImage(userGenders[i]),
            elevation: 10,
            pressElevation: 5,
            shadowColor: Colors.teal,
            backgroundColor: Colors.white70,
            selectedColor: topGradientColor,
            onSelected: (bool selected) {
              setState(() {
                _chosenAnswer = yesNo[i].id;

                _quesResponse = SurveyResponse(
                    answerIds: [_chosenAnswer],
                    userSurveyResponseWeight: getResponseWeight);
              });
            },
          );

          chips.add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: filterChip,
          ));
        }

        return Wrap(
          // shrinkWrap: true,
          spacing: 15.0, // gap between adjacent chips
          runSpacing: 0.0, // gap between lines

          // scrollDirection: Axis.horizontal,
          children: chips,
        );
        break;
      // Freeform
      default:
        return Container();
        break;
    }
  }
}
