import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tofas_spor_okullari/data/models/users_model.dart';
import 'package:tofas_spor_okullari/data/repositories/firebase_repository.dart';
import 'package:tofas_spor_okullari/presentation/utils/error_handler.dart';

import '../utils/bloc_common.dart';

part 'profile_bloc.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default("") String pageError,
    @Default("") String error,
    @Default(StateType.initial) StateType stateType,
    @Default(null) QuerySnapshot<UsersModel?>? dataUser,
    @Default(0) int counted,
  }) = _HomeState;
}

class HomeBloc extends Cubit<HomeState> {
  final FirebaseRepository _firebaseRepository;
  HomeBloc(this._firebaseRepository) : super(const HomeState());

  // Future<void> getUsers({String? usersId}) async {
  //   emit(state.copyWith(stateType: StateType.loading));
  //   try {
  //     final response = await _usersRepository.getUsers();
  //     final items = response.items ;
  //     UsersModel? usersModel;
  //     if (usersId != null) {
  //       usersModel = items.firstWhereOrNull((element) => element.id == usersId);
  //     }
  //     if (items.length == 1) {
  //       BusHelper.eventBus.fire(UpdateHomeEvent(true));
  //     }
  //     emit(state.copyWith(stateType: StateType.success, usersList: items, usersModel: usersModel));
  //   } on Exception catch (e) {
  //     emit(state.copyWith(stateType: StateType.error, pageError: e.handleError()));
  //   }
  // }

  void stateSuccess() {
    emit(state.copyWith(stateType: StateType.success));
  }

  void stateLoading() {
    emit(state.copyWith(stateType: StateType.loading));
  }

  Future<QuerySnapshot<UsersModel?>> getData() async {
    try {
      emit(state.copyWith(stateType: StateType.loading));
      final datas = await _firebaseRepository.getUsers("users", UsersModel());
      emit(state.copyWith(stateType: StateType.success, dataUser: datas));
      return datas;
    } on Exception catch (e) {
      emit(state.copyWith(stateType: StateType.error, error: e.handleError()));
      emit(state.copyWith(error: ""));
      throw e.toString();
    }
  }

  void addData({required UsersModel model}) {
    _firebaseRepository.setUsers("users", model.id ?? "", model);
  }

  void updateData(UsersModel model) {
    _firebaseRepository.setUsers("users", model.id ?? "", model,
        isUpdate: true);
  }

  Future<void> deleteData(String doc) async {
    emit(state.copyWith(stateType: StateType.loading));
    await _firebaseRepository.removeUsers("users", doc);
    emit(state.copyWith(stateType: StateType.success));
  }

  void counter(int value) {
    emit(state.copyWith(counted: value));
  }
}
