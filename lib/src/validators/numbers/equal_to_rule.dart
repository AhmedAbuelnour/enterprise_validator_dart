import 'package:enterprise_validator/enterprise_validator.dart';

class IsEqualToRule extends ValidationRule {
  final int equalTo;

  IsEqualToRule({required String validationError, required this.equalTo,})
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
    return parsedValue == equalTo;
  }
}
