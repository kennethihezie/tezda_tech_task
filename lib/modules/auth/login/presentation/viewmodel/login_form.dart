
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class LoginForm extends AppForm {
  final emailField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const EmailAddressValidator()]);

  final passwordField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const NonEmptyStringValidator()]);

  @override
  Set<AppFormField> fields() {
    return {
      emailField, passwordField
    };
  }

  bool _keepMeLoggedIn = false;

  void setKeepMeLoggedIn(bool value) {
    _keepMeLoggedIn = value;
    updateValidState();
  }

  bool get keepMeLoggedIn => _keepMeLoggedIn;


  @override
  bool get isFormValid => emailField.isFieldValid && passwordField.isFieldValid;
}
