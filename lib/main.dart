import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/service/firebase_options.dart';

import 'app/app.dart';
import 'config/app_config.dart';
import 'config/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      name: 'tofasspor', options: DefaultFirebaseOptions.currentPlatform);
  await configureDI(DevConfig());
  runApp(const App());
}
