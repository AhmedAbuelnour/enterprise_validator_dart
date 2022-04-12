/// a special match validator to check if the input equals another provided value;
class MatchRule {
  final String validationError;
  MatchRule({required this.validationError});

  String? validateMatch(String value, String value2) {
    return value == value2 ? null : validationError;
  }
}