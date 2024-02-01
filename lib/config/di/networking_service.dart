import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tofas_spor_okullari/presentation/ext_utils.dart';
import '../../data/models/services/user_model_local_storage_service.dart';
import '../../data/models/utils/device_info.dart';

@module
abstract class NetworkingModule {
  @lazySingleton
  Dio getDio(UserModelLocalStorageService localStorageService, DeviceInfo deviceInfo) {
    final Dio dio = Dio();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, interceptor) async {
          //TODO Buradaki kontrol check edilmeli
          if (options.path.contains("amazonaws.com")) {
            interceptor.next(options);
            return;
          }
          final token = localStorageService.getAccessToken().toBearer();
          options.headers["app-name"] = "tofas_spor_okullari";
          options.headers["Authorization"] = token;
          options.headers["device-id"] = deviceInfo.deviceID;
          options.headers["os-version"] = deviceInfo.osVersion;
          options.headers["app-version"] = deviceInfo.versionCode;
          options.headers["device-model"] = deviceInfo.model;
          options.headers["platform"] = Platform.isIOS ? "IOS" : "ANDROID";
          options.headers["locale"] = "TUR";
          options.headers["fcm-token"] = localStorageService.getFcmToken();
          options.headers["country-code"] = "TUR";
          interceptor.next(options);
        },
      ),
    );
    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(requestBody: true, requestHeader: true));
    }

    return dio;
  }

}
