import 'package:injectable/injectable.dart';
import 'package:tofas_spor_okullari/data/repositories/firebase_repository.dart';
import 'package:tofas_spor_okullari/domain/repositories/auth_repository_impl.dart';
import '../../data/repositories/auth_repository.dart';
import '../../domain/repositories/firebase_repository_Impl.dart';

@module
abstract class RepositoryModule {
  
  @LazySingleton(as: AuthRepository)
  AuthRepositoryImpl get authRepository;

  @LazySingleton(as : FirebaseRepository)
  FirebaseRepositoryImpl get firebaseRepository;

}
