import 'package:enterprise_validator/enterprise_validator.dart';

class IsEmailOrSaudiMobileRule extends ValidationRule{
  IsEmailOrSaudiMobileRule({required String validationError}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return IsEmailAddressRule(validationError: validationError).check(value) || IsSaudiPhoneNumber(validationError: validationError).check(value);
  }
}