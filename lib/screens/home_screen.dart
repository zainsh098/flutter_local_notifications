
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void showNotification()
  {


    AndroidNotificationDetails androidNotificationDetails=
        AndroidNotificationDetails("Notifications Sony", "Zain",
        enableVibration: true,
          playSound: true,
          priority: Priority.max,
          importance: Importance.max,


        );

    DarwinNotificationDetails darwinNotificationDetails=
    DarwinNotificationDetails(presentAlert: true,
    presentBadge: true,
       presentSound: true,
      badgeNumber: 1,

    );


    NotificationDetails notificationDetails=

    NotificationDetails(android: androidNotificationDetails,iOS: darwinNotificationDetails);



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
      child: Icon(Icons.notification_add),
      ),
      
      
    );
  }
}
