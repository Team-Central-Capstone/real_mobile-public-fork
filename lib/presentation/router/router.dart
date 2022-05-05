import 'package:auto_route/annotations.dart';
import 'package:real/presentation/pages/chats_page.dart';
import 'package:real/presentation/pages/conversation_page.dart';
import 'package:real/presentation/pages/home_page.dart';
import 'package:real/presentation/pages/landing_page.dart';
import 'package:real/presentation/pages/location_page.dart';
import 'package:real/presentation/pages/matches_page.dart';
import 'package:real/presentation/pages/phone_number_sign_in_page.dart';
import 'package:real/presentation/pages/survey_page.dart';
import 'package:real/presentation/pages/user_demographics_page.dart';
import 'package:real/presentation/screens/get_started_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(
      page: PhoneNumberSignInPage,
    ),
    AutoRoute(
      page: HomePage,
    ),
    AutoRoute(
      page: GetStartedScreen,
    ),
    AutoRoute(
      page: UserDemographics,
    ),
    AutoRoute(
      page: SurveyPage,
    ),
    AutoRoute(
      page: ChatsPage,
    ),
    AutoRoute(
      page: ConversationPage,
    ),
    AutoRoute(
      page: LocationPage,
    ),
    AutoRoute(
      page: MatchesPage,
    )
  ],
)
class $AppRouter {}
