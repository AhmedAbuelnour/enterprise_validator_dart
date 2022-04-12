import 'package:enterprise_validator/enterprise_validator.dart';

class IsExactLengthRule extends ValidationRule {
  final int exact;
  final bool countWhiteSpaces;
  IsExactLengthRule({required String validationError,required this.exact, this.countWhiteSpaces = true,}) : super(validationError: validationError);
  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    if(countWhiteSpaces){
      return value.length == exact;
    }else{
      return value.replaceAll(RegExp('\\s+'), '').length == exact;
    }
  }
}
