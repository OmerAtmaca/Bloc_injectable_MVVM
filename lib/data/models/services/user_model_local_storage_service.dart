import 'dart:convert';

import '../users_model.dart';
import 'key_value_store.dart';
import 'shared_preferences_keys.dart';

class UserModelLocalStorageService {
  final KeyValueStore _keyValueStore;

  UserModelLocalStorageService(this._keyValueStore);

  UsersModel? getUserModel() {
    final userModel = _keyValueStore.getString(SharedPreferencesKeys.userModel);
    if (userModel == null) {
      return null;
    }
    return UsersModel.fromJson(json.decode(userModel));
  }

  Future<bool> setUserModel(UsersModel value) => _keyValueStore.setString(
      SharedPreferencesKeys.userModel, json.encode(value.toJson()));

  Future<bool> setId(String id) =>
      _keyValueStore.setString(SharedPreferencesKeys.id, id);

  String getId() => _keyValueStore.getString(SharedPreferencesKeys.id) ?? "";

  String getAccessToken() =>
      _keyValueStore.getString(SharedPreferencesKeys.accessToken) ?? "";

  Future<bool> setAccessToken(String value) =>
      _keyValueStore.setString(SharedPreferencesKeys.accessToken, value);

  String getFcmToken() =>
      _keyValueStore.getString(SharedPreferencesKeys.fcmToken) ?? "";

  Future<bool> setFcmToken(String? value) =>
      _keyValueStore.setString(SharedPreferencesKeys.fcmToken, value ?? "");

  String getRefreshToken() =>
      _keyValueStore.getString(SharedPreferencesKeys.refreshToken) ?? "";

  Future<bool> setRefreshToken(String value) =>
      _keyValueStore.setString(SharedPreferencesKeys.refreshToken, value);

  bool isOnBoarded() =>
      _keyValueStore.getBool(SharedPreferencesKeys.isOnBoarded);

  Future<bool> setIsOnBoarded(bool value) =>
      _keyValueStore.setBool(SharedPreferencesKeys.isOnBoarded, value);

  Future<bool> setDPName(String value) =>
      _keyValueStore.setString(SharedPreferencesKeys.dpName, value);

  String getDPName() =>
      _keyValueStore.getString(SharedPreferencesKeys.dpName) ?? "";

  void logOut() {
    _keyValueStore.clear();
    setIsOnBoarded(false);
  }
}
