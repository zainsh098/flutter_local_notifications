
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_local_notifications_App/main.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const Icon  z=Icon(Icons.add);

  void showNotification()
   async{


    AndroidNotificationDetails androidNotificationDetails=
        AndroidNotificationDetails("Notifications Sony", "Zain",
        enableVibration: true,
          playSound: true,
          priority: Priority.high,
          importance: Importance.high,
          color: Colors.pink,

          channelShowBadge: true,
          enableLights: true,





        );

    DarwinNotificationDetails darwinNotificationDetails=
    DarwinNotificationDetails(presentAlert: true,
    presentBadge: true,
       presentSound: true,
      badgeNumber: 1,

    );


    NotificationDetails notificationDetails=

    NotificationDetails(android: androidNotificationDetails,iOS: darwinNotificationDetails);


    await notificationsPlugin.show(
        0, "Hi First Notifications"," I hope great going " , notificationDetails);



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

        showNotification();
        
      },
      child: Icon(Icons.notification_add),
      ),
      
      
    );
  }
}
