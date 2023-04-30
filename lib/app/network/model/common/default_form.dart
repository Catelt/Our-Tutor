import 'package:formz/formz.dart';

import '../../../localization/localization_utils.dart';
import 'base_error.dart';

class DefaultForm extends FormzInput<String, ValidationError> {
  const DefaultForm.pure() : super.pure('');
  const DefaultForm.dirty([super.value = '']) : super.dirty();

  @override
  ValidationError? validator(String value) {
    if (value.isEmpty) return ValidationError.empty;
    return null;
  }
}

extension DefaultFormError on ValidationError {
  String? get messageDefaultForm {
    if (this == ValidationError.empty) {
      return S.text.common_empty_field;
    }
    return null;
  }
}
