import 'dart:io';

// ignore: depend_on_referenced_packages
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';

// ignore: depend_on_referenced_packages
import 'package:package_info_plus/package_info_plus.dart';

// ignore: depend_on_referenced_packages
import 'package:uuid/uuid.dart';

class DeviceInfo {
  String deviceID = "";
  String versionCode = "0";
  String version = "0";
  String model = "";
  String packageName = "";
  String osVersion = "";

  Future<DeviceInfo> init() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    const uuid = Uuid();
    deviceID = uuid.v1();
    packageName = packageInfo.packageName;
    version = packageInfo.version;
    if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      versionCode = packageInfo.buildNumber;
      model = androidInfo.model;
      osVersion = "${androidInfo.version.sdkInt}";
      version = packageInfo.version;
    } else if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      versionCode = version; //version is the unique things at the ios
      model = iosInfo.utsname.machine!;
      osVersion = iosInfo.systemVersion!;
    }
    debugPrint("Device Info ---------------------------");
    debugPrint("packageName :$packageName");
    debugPrint("deviceID  :$deviceID");
    debugPrint("version  :$version");
    debugPrint("versionCode :$versionCode");
    debugPrint("model  :$model");
    debugPrint("osVersion  :$osVersion");
    debugPrint("---------------------------------------");
    return this;
  }
}
