import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/data/models/users_model.dart';

import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/firebase_repository.dart';
import '../utils/bloc_common.dart';

part 'main_tab_bloc.freezed.dart';

@freezed
class MainTabState with _$MainTabState {
  const factory MainTabState({
    required int currentTabPosition,
    @Default(false) bool isLoggedOut,
    @Default(false) bool isUpdateSide,
    @Default(StateType.initial) StateType stateType,
  }) = _MainTabState;
}

class MainTabBloc extends Cubit<MainTabState> {
  MainTabBloc(this._firebaseRepository, this._authRepository)
      : super(const MainTabState(currentTabPosition: 0));
  final FirebaseRepository _firebaseRepository;
  final AuthRepository _authRepository;

  void updateTabPosition(int pos) =>
      emit(state.copyWith(currentTabPosition: pos));

  void updateSide(bool data) => emit(state.copyWith(isUpdateSide: data));

  void addData({required UsersModel model}) {
    emit(state.copyWith(stateType: StateType.loading));
    _firebaseRepository.setUsers("users", model.id ?? "", model);
    emit(state.copyWith(stateType: StateType.success));
  }

  Future<void> logout() async {
    try {
      _authRepository.logOut();

      emit(state.copyWith(isLoggedOut: true));
    } on Exception catch (e) {
      debugPrint(e.toString());
    }
  }
}
