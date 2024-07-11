
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class ResetPasswordForm extends AppForm {

  final passwordField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const NonEmptyStringValidator()]);

  final confirmPasswordField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const NonEmptyStringValidator()]);

  @override
  Set<AppFormField> fields() {
    return {
      passwordField, confirmPasswordField
    };
  }

  @override
  bool get isFormValid => passwordField.isFieldValid && confirmPasswordField.isFieldValid;
}
