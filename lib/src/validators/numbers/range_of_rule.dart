import 'package:enterprise_validator/enterprise_validator.dart';

class IsInRangeOfRule extends ValidationRule {
  final int min;
  final int max;

  IsInRangeOfRule({required String validationError,required this.min, required this.max})
      : super(validationError: validationError);

  @override
  bool check(String? value) {
    if (value == null) {
      return false;
    }
    int? parsedValue = int.tryParse(value);
    if(parsedValue == null){
      return false;
    }
    return parsedValue >= min && parsedValue <= max;
  }
}
