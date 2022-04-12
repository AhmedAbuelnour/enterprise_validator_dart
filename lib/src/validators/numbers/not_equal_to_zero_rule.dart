import 'package:enterprise_validator/enterprise_validator.dart';

class IsNotEqualToZeroRule extends ValidationRule {

  IsNotEqualToZeroRule({required String validationError})
      : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    int? parsedValue = int.tryParse(value);
    if(parsedValue == null){
      return false;
    }
    return parsedValue != 0;
  }
}
