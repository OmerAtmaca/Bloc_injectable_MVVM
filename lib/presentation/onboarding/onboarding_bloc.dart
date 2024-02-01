import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/services/user_model_local_storage_service.dart';

part 'onboarding_bloc.freezed.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState({
    required int currentPage,
    @Default(false) bool isLoading,
  }) = _OnBoardingState;
}

class OnBoardingBloc extends Cubit<OnBoardingState> {
  final UserModelLocalStorageService localStorageService;
  OnBoardingBloc(this.localStorageService)
      : super(const OnBoardingState(currentPage: 0));

  void updateCurrentPage(int value) {
    emit(state.copyWith(currentPage: value));
  }

  Future<void> init() async {
    localStorageService.setIsOnBoarded(true);
  }
}
