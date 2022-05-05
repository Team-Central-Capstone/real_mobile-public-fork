import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real/logic/bloc/matches_bloc.dart';
import 'package:real/logic/bloc/survey_bloc.dart';
import 'package:real/logic/bloc/user_body_type_bloc.dart';
import 'package:real/logic/bloc/user_gender_bloc.dart';
import 'package:real/logic/bloc/user_profile_bloc.dart';
import 'package:real/logic/core/injection.dart';
import 'package:real/logic/cubit/auth_cubit.dart';
import 'package:real/presentation/router/router.gr.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final navigatorKey = GlobalKey<NavigatorState>();

  // navigator observer to observer routing
  final BotToastNavigatorObserver botToastNavigatorObserver =
      BotToastNavigatorObserver();
  final botToastBuilder = BotToastInit();

  // router
  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    // Multi Bloc Provider to provide blocs to all screens
    return MultiBlocProvider(
      providers: [
        // Provider Auth Cubit
        BlocProvider(
          lazy: false,
          create: (context) => getIt<AuthCubit>(),
        ),

        // Provider Profile Bloc
        BlocProvider(
          lazy: false,
          create: (context) => getIt<UserProfileBloc>(),
        ),

        // Provider User Gender Bloc
        BlocProvider(
          lazy: false,
          create: (context) => getIt<UserGenderBloc>(),
        ),

        // Provider User Body Type Bloc
        BlocProvider(
          lazy: false,
          create: (context) => getIt<UserBodyTypeBloc>(),
        ),

        // Provider Survey Bloc
        BlocProvider(
          lazy: false,
          create: (context) => getIt<SurveyBloc>(),
        ),

        // Provider Matches Bloc
        BlocProvider(
          lazy: false,
          create: (context) => getIt<MatchesBloc>(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(
            navigatorObservers: () => [
                  botToastNavigatorObserver,
                ]),
        routeInformationParser: _appRouter.defaultRouteParser(),
        builder: (context, child) {
          // set property
          return botToastBuilder(context, child);
        },
        title: 'REAL',
      ),
    );
  }
}
