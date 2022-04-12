import 'package:enterprise_validator/enterprise_validator.dart';

class IsGuidAddressRule extends ValidationRule {
  IsGuidAddressRule({required String validationError}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return RegExp(r"^[{]?[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}[}]?$",
      caseSensitive: false,
      multiLine: false,
    ).hasMatch(value);
  }
}