import 'package:enterprise_validator/enterprise_validator.dart';

class IsNotEqualToRule extends ValidationRule {
  final int notEqualTo;

  IsNotEqualToRule({required String validationError,required this.notEqualTo,})
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
    return parsedValue != notEqualTo;
  }
}
