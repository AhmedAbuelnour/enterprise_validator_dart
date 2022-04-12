/// same function signature as FormTextField's validator;
/// So We can take advantage of this by only calling the rule.
typedef FormFieldValidator<T> = String? Function(T? value);

abstract class ValidationRule {
  /// the validationError to display when the validation fails
  final String validationError;

  ValidationRule({required this.validationError});

  /// checks the input against the given conditions
  bool check(String? value);

  /// call is a special function that makes a class callable
  /// returns null if the input is valid otherwise it returns the provided error validationError
  String? call(String? value) {
    return check(value) ? null : validationError;
  }
}

/// Support Multi Validation Rules
class MultiValidationRules extends ValidationRule {
  final List<ValidationRule> validators;
  static String _validationError = '';
  MultiValidationRules(this.validators) : super(validationError: _validationError);

  @override
  bool check(value) {
    for (ValidationRule validator in validators) {
      if (validator(value) != null) {
        _validationError = validator.validationError;
        return false;
      }
    }
    return true;
  }

  @override
  String? call(dynamic value) {
    return check(value) ? null : _validationError;
  }
}