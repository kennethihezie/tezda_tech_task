
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class SignUpForm extends AppForm {
  final emailField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const EmailAddressValidator()]);

  final passwordField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [
        RegexpValidator(
            regexp: r'(?=.*\d)',
            errorMessage: AppForm.numberText,
            shortHint: AppForm.numberText),
        RegexpValidator(
            regexp: r'(?=.*[a-z])',
            errorMessage: AppForm.lowerCaseText,
            shortHint: AppForm.lowerCaseText),
        RegexpValidator(
            regexp: r'(?=.*[!@#\$&*~])',
            errorMessage: AppForm.specialCharacterText,
            shortHint: AppForm.specialCharacterText),
        RegexpValidator(
            regexp: r'(?=.*[A-Z])',
            errorMessage: AppForm.upperCaseText,
            shortHint: AppForm.upperCaseText),
        const MinLengthValidator(8,
            errorMessage: AppForm.passwordLengthText,
            shortHint: AppForm.passwordLengthText),
      ]);

  final confirmPasswordField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const NonEmptyStringValidator()]);

  @override
  Set<AppFormField> fields() {
    return {
      emailField, passwordField, confirmPasswordField
    };
  }

  bool _validateAndConfirmPassword() {
    if (passwordField.getValueAsString().isEmpty ||
        confirmPasswordField.getValueAsString().isEmpty) {
      return false;
    }
    final password = passwordField.getValueAsString();
    final confirmPassword = confirmPasswordField.getValueAsString();

    if (password != confirmPassword) {
      confirmPasswordField.setValidationError(
          errorMessage: 'Passwords do not match');
      return false;
    } else {
      return true;
    }
  }

  @override
  bool get isFormValid => emailField.isFieldValid && passwordField.isFieldValid && confirmPasswordField.isFieldValid && _validateAndConfirmPassword();
}
