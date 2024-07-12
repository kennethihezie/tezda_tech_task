
import 'package:tezda_app/widgets/form/app_form.dart';
import 'package:tezda_app/widgets/inputs/app_input_validator.dart';

class ProductListingForm extends AppForm {
  final searchField = TextAppFormField();

  @override
  Set<AppFormField> fields() {
    return {
      searchField
    };
  }


  @override
  bool get isFormValid => searchField.isFieldValid;
}
