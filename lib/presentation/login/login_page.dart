import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tofas_spor_okullari/app/routing/app_router.dart';

import '../../app/routing/app_navigator.dart';
import '../../config/di/di.dart';
import '../../generated/l10n.dart';
import '../common_widgets/dismiss_keyboard.dart';
import '../common_widgets/loading_widget.dart';
import '../common_widgets/rounded_cta_button.dart';
import '../form_fields.dart';
import '../utils/bloc_common.dart';
import '../utils/custom_colors.dart';
import '../utils/dimens.dart';
import 'login_bloc.dart';

class LoginPage extends StatelessWidget {
  final navigator = inject<AppNavigator>();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LoginBloc>(),
      child: Scaffold(
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.error.isNotEmpty) {
              navigator.showInfoScaffold(context, () {}, state.error);
            } else if (state.stateType == StateType.success) {
              if (state.isSign) {
                navigator.pushRoute(MainTabPageRoute());
                context.read<LoginBloc>().resetToken();
              }
            }
          },
          builder: (context, state) {
            final bloc = context.read<LoginBloc>();
            return DismissKeyboard(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: Dimens.horizontalOffset,
                    right: Dimens.horizontalOffset,
                    child: SafeArea(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            const SizedBox(height: Dimens.verticalOffset),
                            Image.asset(
                              "assets/ic_login_logo.png",
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(height: 32),
                            const Text(
                              "Hoş geldiniz",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.tarawera,
                              ),
                            ),
                            const SizedBox(height: 20),
                            EmailFormField(
                              text: "omer.atmaca@naylalabs.com",
                              isValid: (value) => bloc.isPhoneValid(value),
                              onChanged: (value) =>
                                  bloc.updateEmailNumber(value),
                            ),
                            PasswordFormField(
                              text: "010200",
                              isValid: (value) => bloc.isPhoneValid(value),
                              onChanged: (value) =>
                                  bloc.updatePasswordNumber(value),
                            ),
                            const SizedBox(height: 20),
                            RoundedCtaButton(
                              title: Strings.current.logInButtonText,
                              icon: "assets/ic_arrow_right.png",
                              isActive: bloc.isFormValid(),
                              onClicked: () {
                                if (bloc.isFormValid()) {
                                  bloc.auth();
                                } else {
                                  navigator.showInfoScaffold(context, () {},
                                      Strings.current.inValidFieldsData);
                                }
                              },
                            ),
                            const SizedBox(height: Dimens.verticalOffset),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Loading(
                      isLoading: state.stateType == StateType.loading,
                      showBg: true,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
