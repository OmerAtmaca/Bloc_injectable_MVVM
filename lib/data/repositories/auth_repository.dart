import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User?> signIn({
    required String email,
    required String password,
  });
  Future<void> register(
      {required String username,
      required String email,
      required String password});

  Future<void> logOut();

  Future<bool> setId(String id);

  Future<bool> setAccessToken(String accessToken);

  Future<bool> setFcmToken(String accessToken);

  Future<bool> setRefreshToken(String refreshToken);

  Future<bool> setDPname(String dpName);

  bool isLoggedIn();

  bool isOnBoarded();

  Future<bool> logout();

  Future<bool> resetOnBoarding();
}
