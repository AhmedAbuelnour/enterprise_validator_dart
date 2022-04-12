import 'package:enterprise_validator/enterprise_validator.dart';

class IsEgyptianPhoneNumber extends ValidationRule{
  IsEgyptianPhoneNumber({required String validationError}) : super(validationError: validationError);
  RegExp regExp = RegExp(r"^01[0-2,5]\d{8}$",caseSensitive: false,multiLine: false,);
  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return regExp.hasMatch(value);
  }
}
