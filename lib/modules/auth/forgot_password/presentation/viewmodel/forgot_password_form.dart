
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class ForgotPasswordForm extends AppForm {
  final emailField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const EmailAddressValidator()]);


  @override
  Set<AppFormField> fields() {
    return {
      emailField
    };
  }

  @override
  bool get isFormValid => emailField.isFieldValid;
}
