import 'package:enterprise_validator/enterprise_validator.dart';

class IsMinimumLengthRule extends ValidationRule {
  final int minimum;
  final bool countWhiteSpaces;
  IsMinimumLengthRule({required String validationError, required this.minimum, this.countWhiteSpaces = true,}) : super(validationError: validationError);
  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    if(countWhiteSpaces){
      return value.length > minimum;
    }else{
      return value.replaceAll(RegExp('\\s+'), '').length > minimum;
    }
  }
}