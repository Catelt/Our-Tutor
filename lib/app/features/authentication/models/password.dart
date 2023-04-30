import 'package:formz/formz.dart';

import '../../../localization/localization_utils.dart';
import '../../../network/model/common/base_error.dart';

class Password extends FormzInput<String, ValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) return ValidationError.empty;
    if (value.length < 6) return ValidationError.invalid;
    return null;
  }
}

extension PasswordError on ValidationError {
  String get messagePassword {
    switch (this) {
      case ValidationError.empty:
        return S.text.common_empty_field;
      case ValidationError.invalid:
        return S.text.invalid_password;
    }
  }
}
