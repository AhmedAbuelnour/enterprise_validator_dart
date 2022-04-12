import 'package:enterprise_validator/enterprise_validator.dart';

class IsRequiredRule extends ValidationRule {
  IsRequiredRule({required String validationError}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return value.isNotEmpty;
  }
}
