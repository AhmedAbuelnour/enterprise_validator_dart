<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

This package aims to simplify the process of injecting validation rules, to your form fields, taking the single responsibility from SOLID Design pattern,
Each class of validation represents a validation rule, which can be applied to your inputs.
also you can implement your own validation rules.

## Features

- Provide about 16 built-in validations
  * Strings
    - Validating email
    - Validating json
    - Validating required
    - Validating length (Min, Max, Exact)
    - Validating Mobile Phones (Egyptian, Saudi)
    - Validating Regex Pattern
    - Validating Guid 
  * Numbers
    - Validating Equal to
    - Validating Not Equal to
    - Validating Not Equal to Zero
    - Validating Range Of

## Getting started

```dart
 import 'package:enterprise_validator/enterprise_validator.dart';
```

## Usage

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
   // Orders of validation matters, the first rule you add, the first validation fires.

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

## Additional information
* This package is still in its initial stage, which means, it may have break changes.
* This package is a personal attempt to make the process of validation easier, it is open source, you can get the code and add your own custom logic.
* It's open to contribute and contact with me for any future improvements for the package.
