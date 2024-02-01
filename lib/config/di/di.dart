import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tofas_spor_okullari/config/app_config.dart';
import 'package:tofas_spor_okullari/config/di/di.config.dart';

final GetIt _getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDI(AppConfig appConfig) async {
  _getIt.registerSingleton<AppConfig>(appConfig);
  await _getIt.init();
}

T inject<T extends Object>() => _getIt.get<T>();
