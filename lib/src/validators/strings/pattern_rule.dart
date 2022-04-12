import 'package:enterprise_validator/enterprise_validator.dart';

class IsValidPatternRule extends ValidationRule {
  final String pattern;
  final bool isCaseSensitive;
  IsValidPatternRule({required validationError,required this.pattern, this.isCaseSensitive = true}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return RegExp(
      pattern,
      caseSensitive: isCaseSensitive,
      multiLine: false,
    ).hasMatch(value);
  }
}