// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../pages/chats_page.dart' as _i7;
import '../pages/conversation_page.dart' as _i8;
import '../pages/home_page.dart' as _i3;
import '../pages/landing_page.dart' as _i1;
import '../pages/location_page.dart' as _i9;
import '../pages/matches_page.dart' as _i10;
import '../pages/phone_number_sign_in_page.dart' as _i2;
import '../pages/survey_page.dart' as _i6;
import '../pages/user_demographics_page.dart' as _i5;
import '../screens/get_started_screen.dart' as _i4;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LandingPage());
    },
    PhoneNumberSignInRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PhoneNumberSignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    GetStartedScreen.name: (routeData) {
      final args = routeData.argsAs<GetStartedScreenArgs>(
          orElse: () => const GetStartedScreenArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.GetStartedScreen(key: args.key));
    },
    UserDemographics.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserDemographics());
    },
    SurveyRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SurveyPage());
    },
    ChatsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ChatsPage());
    },
    ConversationRoute.name: (routeData) {
      final args = routeData.argsAs<ConversationRouteArgs>();
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ConversationPage(
              key: args.key,
              chatRoomId: args.chatRoomId,
              fbId: args.fbId,
              name: args.name));
    },
    LocationRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.LocationPage());
    },
    MatchesRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MatchesPage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(LandingRoute.name, path: '/'),
        _i11.RouteConfig(PhoneNumberSignInRoute.name,
            path: '/phone-number-sign-in-page'),
        _i11.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i11.RouteConfig(GetStartedScreen.name, path: '/get-started-screen'),
        _i11.RouteConfig(UserDemographics.name, path: '/user-demographics'),
        _i11.RouteConfig(SurveyRoute.name, path: '/survey-page'),
        _i11.RouteConfig(ChatsRoute.name, path: '/chats-page'),
        _i11.RouteConfig(ConversationRoute.name, path: '/conversation-page'),
        _i11.RouteConfig(LocationRoute.name, path: '/location-page'),
        _i11.RouteConfig(MatchesRoute.name, path: '/matches-page')
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i11.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.PhoneNumberSignInPage]
class PhoneNumberSignInRoute extends _i11.PageRouteInfo<void> {
  const PhoneNumberSignInRoute()
      : super(PhoneNumberSignInRoute.name, path: '/phone-number-sign-in-page');

  static const String name = 'PhoneNumberSignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.GetStartedScreen]
class GetStartedScreen extends _i11.PageRouteInfo<GetStartedScreenArgs> {
  GetStartedScreen({_i12.Key? key})
      : super(GetStartedScreen.name,
            path: '/get-started-screen', args: GetStartedScreenArgs(key: key));

  static const String name = 'GetStartedScreen';
}

class GetStartedScreenArgs {
  const GetStartedScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'GetStartedScreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.UserDemographics]
class UserDemographics extends _i11.PageRouteInfo<void> {
  const UserDemographics()
      : super(UserDemographics.name, path: '/user-demographics');

  static const String name = 'UserDemographics';
}

/// generated route for
/// [_i6.SurveyPage]
class SurveyRoute extends _i11.PageRouteInfo<void> {
  const SurveyRoute() : super(SurveyRoute.name, path: '/survey-page');

  static const String name = 'SurveyRoute';
}

/// generated route for
/// [_i7.ChatsPage]
class ChatsRoute extends _i11.PageRouteInfo<void> {
  const ChatsRoute() : super(ChatsRoute.name, path: '/chats-page');

  static const String name = 'ChatsRoute';
}

/// generated route for
/// [_i8.ConversationPage]
class ConversationRoute extends _i11.PageRouteInfo<ConversationRouteArgs> {
  ConversationRoute(
      {_i12.Key? key,
      required String chatRoomId,
      required String fbId,
      required String name})
      : super(ConversationRoute.name,
            path: '/conversation-page',
            args: ConversationRouteArgs(
                key: key, chatRoomId: chatRoomId, fbId: fbId, name: name));

  static const String name = 'ConversationRoute';
}

class ConversationRouteArgs {
  const ConversationRouteArgs(
      {this.key,
      required this.chatRoomId,
      required this.fbId,
      required this.name});

  final _i12.Key? key;

  final String chatRoomId;

  final String fbId;

  final String name;

  @override
  String toString() {
    return 'ConversationRouteArgs{key: $key, chatRoomId: $chatRoomId, fbId: $fbId, name: $name}';
  }
}

/// generated route for
/// [_i9.LocationPage]
class LocationRoute extends _i11.PageRouteInfo<void> {
  const LocationRoute() : super(LocationRoute.name, path: '/location-page');

  static const String name = 'LocationRoute';
}

/// generated route for
/// [_i10.MatchesPage]
class MatchesRoute extends _i11.PageRouteInfo<void> {
  const MatchesRoute() : super(MatchesRoute.name, path: '/matches-page');

  static const String name = 'MatchesRoute';
}
