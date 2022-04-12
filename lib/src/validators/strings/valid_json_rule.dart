import 'dart:convert';
import 'package:enterprise_validator/enterprise_validator.dart';

class IsValidJsonRule extends ValidationRule {
  final String jsonValue;

  IsValidJsonRule({required validationError, required this.jsonValue}): super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    try {
      json.decode(jsonValue) as Map<String, dynamic>;
    } on FormatException {
      return false;
    }
    return true;
  }
}
