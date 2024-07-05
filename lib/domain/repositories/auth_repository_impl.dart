import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../data/models/services/user_model_local_storage_service.dart';
import '../../data/repositories/auth_repository.dart';
import '../../generated/l10n.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;
  final UserModelLocalStorageService _localStorageService;

  AuthRepositoryImpl(
      this._firebaseFirestore, this._firebaseAuth, this._localStorageService);

  @override
  Future<void> register(
      {required String username,
      required String email,
      required String password}) {
    return _firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      return _firebaseFirestore
          .doc("appUsers/${value.user!.uid}")
          .set({"email": email, "username": username});
    });
  }

  @override
  Future<User?> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        throw Exception(Strings.current.userNoFound);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        throw Exception(Strings.current.passwordError);
      }
    }
    return null;
  }

  @override
  Future<void> logOut() async {
    _localStorageService.logOut();
    _firebaseAuth.signOut();
  }

  @override
  Future<bool> setAccessToken(String accessToken) =>
      _localStorageService.setAccessToken(accessToken);

  @override
  Future<bool> setId(String id) => _localStorageService.setId(id);

  @override
  Future<bool> setRefreshToken(String refreshToken) =>
      _localStorageService.setRefreshToken(refreshToken);

  @override
  Future<bool> setFcmToken(String fcmToken) =>
      _localStorageService.setFcmToken(fcmToken);

  @override
  bool isLoggedIn() => _localStorageService.getAccessToken() != "";

  @override
  bool isOnBoarded() => _localStorageService.isOnBoarded();

  @override
  Future<bool> resetOnBoarding() => _localStorageService.setIsOnBoarded(false);

  @override
  Future<bool> logout() {
    //TODO: Backend yapıldığında yorum satırı acılacak.
    //_authApiService.logout();
    _localStorageService.logOut();
    return Future.value(true);
  }
}
