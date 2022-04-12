
## Inject Single Validation Rule 
```Dart

     // assign it directly to a TextFormField validator
     TextFormField(
         validator: IsEmailAddressRule(validationError: 'enter a valid email address')
         );

     // create a reusable instance
     final requiredValidation = IsEmailAddressRule(validationError :'this field is required');

     // again assign it directly to the validator
     TextFormField(validator: requiredValidation);
```

## Inject Multiple Validation Rules
```dart  
   
  final passwordRules = MultiValidationRules([  
    IsRequiredRule(validationError: 'password is required'),  
    IsMinimumLengthRule(8, validationError: 'password must be at least 8 digits long'),  
    IsValidPatternRule(r'(?=.*?[#?!@$%^&*-])', validationError: 'passwords must have at least one special character')  
 ]);  
  
  String password;  
  
  Form(  
    key: _formKey,  
    child: Column(children: [  
      TextFormField(  
        obscureText: true,  
        onChanged: (val) => password = val,  
        // assign the the multi validation rules to the TextFormField validator  
        validator: passwordRules,  
      ),  
  
      // using the match validator to confirm password  
      TextFormField(  
        validator: (val) => MatchRule(validationError: 'passwords do not match').validateMatch(val, password),  
      )  
    ]),  
  );  
    
 ```
## Make your own validation rule
```dart  
   
 class Is[YourRuleName]Rule extends ValidationRule {
  Is[YourRuleName]Rule({required String validationError}) : super(validationError: validationError);

  @override
  bool check(String? value) {
    // Apply here your custom validation rule
    // then return true/ false based on your logic.
    return true/false;
  }
}
    
 ```