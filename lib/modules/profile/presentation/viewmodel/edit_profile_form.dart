
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class EditProfileForm extends AppForm {
  final fullNameField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const NonEmptyStringValidator()]);

  final emailField = TextAppFormField(
      validateOnFocusLost: false,
      validators: [const NonEmptyStringValidator()]);

  @override
  Set<AppFormField> fields() {
    return {
      fullNameField, emailField
    };
  }




  @override
  bool get isFormValid => fullNameField.isFieldValid && emailField.isFieldValid;
}
