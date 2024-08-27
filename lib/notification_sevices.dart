import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationSevices {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('flutter_logo');
    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {});
    var initializationSetting = InitializationSettings(android: initializationSettingsAndroid,iOS: initializationSettingsIOS);
  await notificationsPlugin.initialize(initializationSetting,onDidReceiveNotificationResponse: (NotificationResponse notificationResponse)async{});
  }

  notificationDetails(){
    return const NotificationDetails(
      android: AndroidNotificationDetails("channelId", "channelName",importance: Importance.max),iOS: DarwinNotificationDetails()
    );

  }

  Future showNotification({int id =0,String? title,String?body,String? payload})async{
return notificationsPlugin.show(id, title, body, await notificationDetails());

  }
}
