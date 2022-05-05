import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/router/router.gr.dart';
import 'dart:math' as math;

import 'package:real/presentation/widgets/real_auth_logo.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat();

  @override
  void initState() {
    // Make app it portrait only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // Hide top bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation =
        Tween<double>(begin: -250, end: 150).animate(animationController)
          ..addListener(() {
            setState(() {});
          });

    animationController.forward();
    _controller.forward();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final bool isUserLoggedIn = context.read<AuthCubit>().state.isLoggedIn;
      final bool isUserCheckedFromAuthService =
          context.read<AuthCubit>().state.isUserCheckedFromAuthService;
      if (isUserLoggedIn) {
        // Timer of 3 seconds for the splash screen
        Timer(
          const Duration(seconds: 3),
          () => AutoRouter.of(context).replace(const HomeRoute()),
        );
      } else if (!isUserLoggedIn && isUserCheckedFromAuthService) {
        Timer(
          const Duration(seconds: 3),
          () => AutoRouter.of(context).replace(GetStartedScreen()),
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) =>
          p.isUserCheckedFromAuthService != c.isUserCheckedFromAuthService &&
          c.isUserCheckedFromAuthService,
      listener: (context, state) {
        final bool isUserLoggedIn = state.isLoggedIn;

        if (isUserLoggedIn) {
          AutoRouter.of(context).replace(const HomeRoute());
        } else {
          AutoRouter.of(context).replace(const PhoneNumberSignInRoute());
        }
      },
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/splash_bg.png'),
                    fit: BoxFit.fill)),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 0.7),
            child: Transform.translate(
              offset: Offset(0, animation.value),
              child: Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform(
                        alignment: Alignment.center,
                        transform:
                            Matrix4.rotationY(_controller.value * 2 * math.pi),
                        child: child);
                  },
                  child: const AuthLogo(logoSize: 1.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    _controller.dispose();
    super.dispose();
  }
}
