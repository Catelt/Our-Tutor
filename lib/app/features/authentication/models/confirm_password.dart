import 'package:formz/formz.dart';

import '../../../localization/localization_utils.dart';

enum ConfirmPasswordValidationError {
  empty,
  notMatch,
}

class ConfirmPassword
    extends FormzInput<String, ConfirmPasswordValidationError> {
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');
  const ConfirmPassword.dirty([super.value = '', this.password = ''])
      : super.dirty();

  final String? password;
  @override
  ConfirmPasswordValidationError? validator(String value) {
    if (value.isEmpty) return ConfirmPasswordValidationError.empty;
    if (value != password) return ConfirmPasswordValidationError.notMatch;
    return null;
  }
}

extension EmailError on ConfirmPasswordValidationError {
  String get message {
    switch (this) {
      case ConfirmPasswordValidationError.empty:
        return S.text.common_empty_field;
      case ConfirmPasswordValidationError.notMatch:
        return S.text.password_not_match;
    }
  }
}
