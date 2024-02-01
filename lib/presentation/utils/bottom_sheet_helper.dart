import 'package:flutter/material.dart';
import 'package:tofas_spor_okullari/app/routing/app_navigator.dart';
import 'package:tofas_spor_okullari/presentation/common_widgets/bottom_sheet_wrapper.dart';
import 'package:tofas_spor_okullari/presentation/utils/custom_colors.dart';
import 'package:tofas_spor_okullari/presentation/utils/dimens.dart';

import '../../data/remote_config/platform_model.dart';
import '../../generated/l10n.dart';
import '../common_widgets/rounded_cta_button.dart';
import '../common_widgets/rounded_outlined_cta_button.dart';

class BottomSheetHelper {
  BottomSheetHelper(this.navigator);

  final AppNavigator navigator;

  void _showBottomSheet(context, Widget body,
      {Color? bgColor, Function? onClose, bool? cancellable}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: cancellable ?? true,
      barrierColor:
          bgColor ?? CustomColors.bottomSheetBackground.withOpacity(0.7),
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) => body,
    ).whenComplete(() => onClose?.call());
  }

  void showForceUpdateBottomSheet(
    BuildContext context, {
    required PlatformModel? model,
    Function? updatePress,
  }) {
    _showBottomSheet(
      context,
      BottomSheetWrapper(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Dimens.verticalOffset,
              horizontal: Dimens.horizontalOffset),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/ic_warning.png",
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Text(
                          model?.number ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: CustomColors.tarawera,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  RoundedCtaButton(
                    title: Strings.current.update,
                    icon: "assets/ic_arrow_right.png",
                    onClicked: () => updatePress?.call(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      cancellable: false,
    );
  }

  void showUnavailableServiceTypeBottomSheet(
    BuildContext context, {
    required String message,
  }) {
    _showBottomSheet(
      context,
      BottomSheetWrapper(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Dimens.verticalOffset,
              horizontal: Dimens.horizontalOffset),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/ic_warning.png",
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: CustomColors.tarawera,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/ic_close.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      cancellable: true,
    );
  }

  void showDeleteItemBottomSheet(
    BuildContext context, {
    required String warningContent,
    Function? onConfirmButtonTapped,
  }) {
    _showBottomSheet(
      context,
      BottomSheetWrapper(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Dimens.verticalOffset,
              horizontal: Dimens.horizontalOffset),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/ic_warning.png",
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      warningContent,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: CustomColors.tarawera,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: RoundedCtaButton(
                          title: Strings.current.yes,
                          color: CustomColors.dazzledBlue,
                          onClicked: () {
                            onConfirmButtonTapped?.call();
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: RoundedOutlinedCtaButton(
                          title: Strings.current.cancel,
                          onClicked: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () => Navigator.of(context).pop(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/ic_close.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      cancellable: true,
    );
  }
}
