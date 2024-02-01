import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/services/notification_service.dart';
import '../../data/models/services/user_model_local_storage_service.dart';
import '../../data/models/utils/device_info.dart';
import '../../presentation/utils/bottom_sheet_helper.dart';

@module
abstract class ServiceModule {
  @singleton
  UserModelLocalStorageService get localStorageService;

  @singleton
  BottomSheetHelper get bottomSheetHelper;

  @singleton
  @preResolve
  Future<DeviceInfo> getDeviceInfo() async => DeviceInfo().init();

  @singleton
  NotificationService get notificationService;

  @singleton
  FlutterLocalNotificationsPlugin getFlutterLocalNotificationPlugin() =>
      FlutterLocalNotificationsPlugin();
}
