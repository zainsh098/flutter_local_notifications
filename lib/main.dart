import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_local_notifications_App/screens/home_screen.dart';


FlutterLocalNotificationsPlugin notificationsPlugin=FlutterLocalNotificationsPlugin();



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AndroidInitializationSettings androidInitializationSettings =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  DarwinInitializationSettings darwinInitializationSettings =
      const DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestCriticalPermission: true,
    requestSoundPermission: true,
  );


  InitializationSettings initializationSettings=
  InitializationSettings(android: androidInitializationSettings,
  iOS: darwinInitializationSettings);

  bool? initialized= await notificationsPlugin.initialize(initializationSettings);
  log("Notifications : $initialized");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Local Notifications',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
