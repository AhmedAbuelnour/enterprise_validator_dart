import 'package:enterprise_validator/enterprise_validator.dart';

class IsEmailAddressRule extends ValidationRule {
  IsEmailAddressRule({required String validationError}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return RegExp(
      r"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([azA-Z]{2,4}|[0-9]{1,3})(\]?)$",
      caseSensitive: false,
      multiLine: false,
    ).hasMatch(value);
  }
}
