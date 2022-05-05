// package imports
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:real/constants/app_constants.dart';
import 'package:real/constants/util.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/presentation/widgets/auth_text_button.dart';

/// Gauge imports
import 'package:syncfusion_flutter_gauges/gauges.dart';

/// Renders the linear gauge height calculator sample.
class HeightCalculator extends StatefulWidget {
  /// Creates the linear gauge height calculator sample.
  const HeightCalculator({Key? key}) : super(key: key);
  @override
  _HeightCalculatorState createState() => _HeightCalculatorState();
}

class _HeightCalculatorState extends State<HeightCalculator> {
  _HeightCalculatorState();

  late Util _mUtil;

  double _pointerValue = 130;
  double minimumLevel = 0;
  double maximumLevel = 200;

  @override
  void initState() {
    _mUtil = getIt<Util>();

    (_mUtil.profileUserModel!.heightInches != null)
        ? _pointerValue = _mUtil.profileUserModel!.heightInches!.toDouble()
        : _pointerValue = 130;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (kIsWeb)
        ? Container(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width >= 1000 ? 550 : 440,
              height: 500,
              child: _buildHeightCalculator(context),
            ))
        : _buildHeightCalculator(context);
  }

  /// Returns the height calculator.
  Widget _buildHeightCalculator(BuildContext context) {
    final Brightness _brightness = Theme.of(context).brightness;

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
                child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width:
                        MediaQuery.of(context).size.width >= 1000 ? 550 : 440,
                    padding: const EdgeInsets.all(5.0),
                    child: SfLinearGauge(
                      orientation: LinearGaugeOrientation.vertical,
                      minimum: 0,
                      maximum: maximumLevel,
                      tickPosition: LinearElementPosition.outside,
                      labelPosition: LinearLabelPosition.outside,
                      minorTicksPerInterval: 0,
                      interval:
                          // isCardView ? 50 :
                          50,
                      onGenerateLabels: () {
                        return
                            // isCardView
                            //     ?
                            <LinearAxisLabel>[
                          const LinearAxisLabel(text: '0 cm', value: 0),
                          const LinearAxisLabel(text: '50 cm', value: 50),
                          const LinearAxisLabel(text: '100 cm', value: 100),
                          const LinearAxisLabel(text: '150 cm', value: 150),
                          const LinearAxisLabel(text: '200 cm', value: 200),
                        ];
                      },
                      axisTrackStyle:
                          const LinearAxisTrackStyle(thickness: 5.0),
                      markerPointers: <LinearMarkerPointer>[
                        LinearShapePointer(
                            value: _pointerValue,
                            enableAnimation: false,
                            onChanged: (dynamic value) {
                              setState(() {
                                _pointerValue = value as double;
                              });
                            },
                            position: LinearElementPosition.outside,
                            shapeType: LinearShapePointerType.rectangle,
                            color: topGradientColor,
                            height: 1.5,
                            width:
                                // isCardView ?
                                150),
                        // : 250),
                        LinearWidgetPointer(
                            value: _pointerValue,
                            enableAnimation: false,
                            position: LinearElementPosition.cross,
                            onChanged: (dynamic value) {
                              setState(() {
                                _pointerValue = value as double;
                              });
                            },
                            child: SizedBox(
                                width: 24,
                                height: 16,
                                child: Image.asset(
                                  'assets/images/pointer.png',
                                ))),
                        LinearWidgetPointer(
                            value: _pointerValue,
                            markerAlignment: LinearMarkerAlignment.center,
                            enableAnimation: false,
                            onChanged: (dynamic value) {
                              setState(() {
                                _pointerValue = value as double;
                              });
                            },
                            offset: 150,
                            position: LinearElementPosition.outside,
                            child: Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color:
                                        // model.cardColor,
                                        topGradientColor,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: _brightness == Brightness.light
                                            ? Colors.grey
                                            : Colors.black54,
                                        offset: const Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                  child: Text(
                                      _pointerValue.toStringAsFixed(0) + ' cm',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                          color: Color(0xff0074E3))),
                                ))),
                      ],
                      ranges: <LinearGaugeRange>[
                        LinearGaugeRange(
                          endValue: _pointerValue,
                          startWidth: 200,
                          midWidth:
                              // isCardView ?
                              200,
                          // : 300,
                          endWidth: 200,
                          color: Colors.transparent,
                          child: Image.asset(
                            'assets/images/bmi_light.png',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: AuthTextButton(
                text: 'DONE',
                onPressed: () {
                  _mUtil.profileUserModel = _mUtil.profileUserModel!.copyWith(
                    heightInches: _pointerValue.toInt(),
                  );
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ));
  }
}
