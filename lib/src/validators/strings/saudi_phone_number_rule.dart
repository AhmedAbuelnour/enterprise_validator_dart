import 'package:enterprise_validator/enterprise_validator.dart';

class IsSaudiPhoneNumber extends ValidationRule{
  IsSaudiPhoneNumber({required String validationError}) : super(validationError: validationError);
  RegExp regExp = RegExp(r"/^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$/",caseSensitive: false,multiLine: false,);
  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    return regExp.hasMatch(value);
  }
}
