import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/data/repositories/firebase_repository.dart';
import 'package:tofas_spor_okullari/presentation/utils/error_handler.dart';

import '../../data/models/users_model.dart';
import '../utils/bloc_common.dart';

part 'home_bloc.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default("") String pageError,
    @Default("") String error,
    @Default(StateType.initial) StateType stateType,
    @Default(null) UsersModel? userModel,
  }) = _HomeState;
}

class HomeBloc extends Cubit<HomeState> {
  final FirebaseRepository _firebaseRepository;
  HomeBloc(this._firebaseRepository) : super(const HomeState());

  //TODO: Check code and fix for default style
  Future<QuerySnapshot<UsersModel?>> getHome() async {
    emit(state.copyWith(stateType: StateType.loading));
    try {
      final data = await _firebaseRepository.getUsers("home", UsersModel());
      emit(state.copyWith(stateType: StateType.success));
      return data;
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, error: e.handleError()));
      emit(state.copyWith(error: ""));
      throw e.toString();
    }
  }
}
