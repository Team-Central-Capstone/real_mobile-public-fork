import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:real/presentation/router/router.gr.dart';

class GetStartedScreen extends StatelessWidget {
  GetStartedScreen({Key? key}) : super(key: key);

  final pages = [
    // PAGE 1
    PageViewModel(
      bubble: Lottie.asset(
        'assets/lottie/location.json',
        repeat: true,
        reverse: true,
      ),
      pageBackground: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/get_started_second_bg.png'),
                fit: BoxFit.fill)),
      ),
    ),
    // PAGE 2
    PageViewModel(
      bubble: Lottie.asset(
        'assets/lottie/meter.json',
        repeat: true,
        reverse: true,
      ),
      pageBackground: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/get_started_third_bg.png'),
                fit: BoxFit.fill)),
        child: Center(
          child: Lottie.asset('assets/lottie/flying_heart.json',
              repeat: true, reverse: true, height: 90, width: 90),
        ),
      ),
    ),
    // PAGE 3
    PageViewModel(
      bubble: Lottie.asset(
        'assets/lottie/flying_heart.json',
        repeat: true,
        reverse: true,
      ),
      pageBackground: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/get_started_first_bg.png'),
                fit: BoxFit.fill)),
      ),
    ),
    // PAGE 4
    PageViewModel(
      bubble: Image.asset(
        'assets/icons/real_sticky_icon.png',
      ),
      pageBackground: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/get_started_bg.png'),
                fit: BoxFit.fill)),
        child: Center(
          child: Lottie.asset('assets/lottie/flying_heart.json',
              repeat: true, reverse: true, height: 90, width: 90),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      showNextButton: false,
      showBackButton: false,
      doneText: const Text('GET STARTED'),
      onTapDoneButton: () {
        AutoRouter.of(context).replace(const PhoneNumberSignInRoute());
      },
      pageButtonTextStyles: const TextStyle(
        color: Colors.white70,
        fontSize: 18.0,
      ),
    );
  }
}
