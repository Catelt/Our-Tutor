import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';

import '../../../localization/localization_utils.dart';
import '../../../network/model/common/base_error.dart';

class Email extends FormzInput<String, ValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) return ValidationError.empty;
    if (!EmailValidator.validate(value)) return ValidationError.invalid;
    return null;
  }
}

extension EmailError on ValidationError {
  String get messageEmail {
    switch (this) {
      case ValidationError.empty:
        return S.text.common_empty_field;
      case ValidationError.invalid:
        return S.text.invalid_email;
    }
  }
}
