import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:real/presentation/screens/app_widget.dart';

import 'logic/core/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.dev);
  // FCM
  // Request Permissions
  FirebaseMessaging.instance.requestPermission();

  // Update the iOS foreground notification presentation options to allow
  // heads up notifications.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  runApp(const AppWidget());
}
