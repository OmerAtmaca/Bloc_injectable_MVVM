import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tofas_spor_okullari/data/repositories/auth_repository.dart';
import 'package:tofas_spor_okullari/domain/events/update_home_event.dart';
import 'package:tofas_spor_okullari/presentation/utils/bus_helper.dart';

const AndroidNotificationChannel _channel = AndroidNotificationChannel(
  'pharmacy_high_importance_channel', // id
  'Pharmacy High Importance Notifications', // title
  description:
      'This channel is used for important notifications.', // description
  importance: Importance.high,
);

class NotificationService {
  final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  final AuthRepository _authRepository;

  NotificationService(
    this._firebaseMessaging,
    this._flutterLocalNotificationsPlugin,
    this._authRepository,
  );

  Future<void> init() async {
    await _setupFlutterNotifications();
  }

  Future<void> _setupFlutterNotifications() async {
    const androidInitializationSetting =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosInitializationSetting = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
        android: androidInitializationSetting, iOS: iosInitializationSetting);

    await _flutterLocalNotificationsPlugin.initialize(initSettings);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();

    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    await _firebaseMessaging.getToken().then((value) => updateToken(value));
    _firebaseMessaging.onTokenRefresh.listen((value) => updateToken(value));
    _fcmListeners();
  }

  void _fcmListeners() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint("FirebaseMessaging.onMessage");
      final notification = message.notification;
      final android = message.notification?.android;
      BusHelper.instance?.eventBus.fire(UpdateHomeEvent(false));
      if (notification != null && android != null) {
        _flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              _channel.id,
              _channel.name,
              channelDescription: _channel.description,
              icon: '@mipmap/ic_launcher',
            ),
          ),
          payload: json.encode(message.data),
        );
      }
    });
    FirebaseMessaging.onMessageOpenedApp
        .listen((RemoteMessage message) => debugPrint("Notification tapped"));
  }

  Future<void> showLocalNotification(String title, String body) async {
    const androidNotificationDetail = AndroidNotificationDetails(
      'pharmacy_high_importance_channel', // id
      'Pharmacy High Importance Notifications', // title
    );
    const iosNotificationDetail = DarwinNotificationDetails();
    const notificationDetails = NotificationDetails(
      iOS: iosNotificationDetail,
      android: androidNotificationDetail,
    );
    await _flutterLocalNotificationsPlugin.show(
        0, title, body, notificationDetails);
  }

  Future<void> updateToken(String? value) async {
    debugPrint("FCM_TOKEN $value");
    _authRepository.setFcmToken(value ?? "");
  }
}
