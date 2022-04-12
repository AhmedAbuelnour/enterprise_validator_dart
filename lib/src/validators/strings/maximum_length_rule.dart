import 'package:enterprise_validator/enterprise_validator.dart';

class IsMaximumLengthRule extends ValidationRule {
  final int maximum;
  final bool countWhiteSpaces;
  IsMaximumLengthRule({required String validationError,required this.maximum, this.countWhiteSpaces = true,}) : super(validationError: validationError);
  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    if(countWhiteSpaces){
      return value.length < maximum;
    }else{
      return value.replaceAll(RegExp('\\s+'), '').length < maximum;
    }
  }
}
