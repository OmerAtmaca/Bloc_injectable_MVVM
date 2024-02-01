import 'package:flutter/cupertino.dart';
import 'package:tofas_spor_okullari/presentation/ext_utils.dart';

import '../generated/l10n.dart';
import 'common_widgets/custom_text_field.dart';

class PhoneFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String? preText;
  final String text;

  const PhoneFormField(
      {super.key, this.onChanged, this.isValid, this.text = "", this.preText});

  @override
  Widget build(BuildContext context) => CustomTextField(
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else if (value.length != 13) {
            return Strings.current.inValidPhoneErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        preText: preText,
        textInputType: TextInputType.phone,
        label: Strings.current.phone,
      );
}

class EmailFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;

  const EmailFormField(
      {super.key, this.onChanged, this.isValid, this.text = ""});

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.email,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else if (!value.isValidEmail()) {
            return Strings.current.inValidEmailErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        text: text,
        textInputType: TextInputType.emailAddress,
        label: Strings.current.email,
      );
}

class NameFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const NameFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.firstName,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.firstName,
      );
}

class LastNameFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const LastNameFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.lastName,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.lastName,
      );
}

class PasswordFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;

  const PasswordFormField(
      {super.key, this.onChanged, this.isValid, this.text = ""});

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.password,
        isObscured: true,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else if (value.length < 6) {
            return Strings.current.shortPasswordErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        text: text,
        label: Strings.current.password,
      );
}

class FullNameFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const FullNameFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.fullName,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.fullName,
      );
}

class AddressTitleFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const AddressTitleFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.addressTitle,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.addressTitle,
      );
}

class AddressDetailFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const AddressDetailFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.addressDetail,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.addressDetail,
      );
}

class AddressBuildingNumberFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const AddressBuildingNumberFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.addressBuildingNumber,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        textInputType: TextInputType.number,
        text: text,
        label: Strings.current.addressBuildingNumber,
      );
}

class AddressFloorFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const AddressFloorFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.addressFlor,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        textInputType: TextInputType.number,
        text: text,
        label: Strings.current.addressFlor,
      );
}

class AddressApartmentNumberFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const AddressApartmentNumberFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.addressApartmentNumber,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        textInputType: TextInputType.number,
        text: text,
        label: Strings.current.addressApartmentNumber,
      );
}

class AddressDirectionsFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const AddressDirectionsFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.addressDirections,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.addressDirections,
      );
}

//Payment page form fields

class CardHolderFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const CardHolderFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.fullName,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.fullName,
      );
}

class ExpireDateFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const ExpireDateFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.done,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.cvv,
        textInputType: TextInputType.number,
        maxLength: 4,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else if (value.length < 3) {
            return Strings.current.cvvFieldLengthErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.cvv,
      );
}

//Device page form fields

class BrandFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const BrandFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.brandOfDevice,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.brandOfDevice,
      );
}

class ModelFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const ModelFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.modelOfDevice,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.modelOfDevice,
      );
}

class SerialNoFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;
  final TextInputAction inputAction;

  const SerialNoFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        hint: Strings.current.serialOfDevice,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        textInputAction: inputAction,
        text: text,
        label: Strings.current.serialOfDevice,
      );
}

class UserNoteFormField extends StatelessWidget {
  final Function? onChanged;
  final Function? isValid;
  final String text;

  const UserNoteFormField({
    super.key,
    this.onChanged,
    this.isValid,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) => CustomTextField(
        validator: (value) {
          if (value == null || value.toString().trim().isEmpty) {
            return Strings.current.fieldEmptyErrorMsg;
          } else {
            return null;
          }
        },
        isValid: isValid,
        onChanged: onChanged,
        text: text,
        label: "",
        multiLine: true,
      );
}
