import 'package:flutter/material.dart';
import 'package:push_notification/notification_sevices.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

 

  @override
  Widget build(BuildContext context) {
     NotificationSevices sevices =NotificationSevices();
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Push Notification'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          sevices.showNotification(title: 'hollow all',body: "istsworking");
          
        }
        , child: const Text('New Notification')),
      ),
      
    );
  }
}