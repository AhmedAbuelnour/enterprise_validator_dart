import 'package:enterprise_validator/enterprise_validator.dart';

class IsEmailOrEgyptianMobileRule extends ValidationRule{
  IsEmailOrEgyptianMobileRule({required String validationError}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return IsEmailAddressRule(validationError: validationError).check(value) || IsEgyptianPhoneNumber(validationError: validationError).check(value);
  }
}