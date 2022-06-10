# Validation Flutter

Validation Flutter included common ready-made validation for textfield with app possible use cases.

### Provided Validation
- Email
- Password
- Phone
- Postal Code
- User Name

## Installation

Install the dependencies in pubspecs.yaml file

```sh
validation:
  git:
    url: https://github.com/SarvadhiSolutionsLabs/validation-flutter.git
```

## Using the library
Create a Form with a GlobalKey.
```sh
GlobalKey<FormState> _formkey = GlobalKey<FormState>();
```

Create a TextFromField with Validation

```sh
Form(
    key: _formkey,
    autovalidateMode: AutovalidateMode.always,
    child: TextFormField(
      controller: _emailController,
      validator: (value) {
        if (!Validator.emailValidation(value).isValidate) {
          return Validator.emailValidation(value).message;
        } else
          return null;
        },
    ),
);
```
You can validate form
```sh
void checkValidation() {
    if (_formkey.currentState.validate()) {
      print('All Good!!');
    } else {
      print('Check the errors');
    }
  }
```

## Validators

| Validator | Description |
| ------ | ------ |
| usernameValidation | Which contain lowercase and capitals, alphanumeric characters, underscore and hyphens and spaces, two hypens or two spaces in a row, hypen or space at the start or end. |
| emailValidation | Secure with mostly used RegEx |
| passwordValidation | If you give [passwordCase] value like [PasswordCase.UPPERCASE,PasswordCase.NUMERIC] then it will consider these two validation method only to validate your string. If you pass blank array [] then It will consider only wordLimit-6 validation OR If you didn't pass anything then It will include all types of validation for password which is included UPPERCASE, LOWERCASE, NUMERIC and SPACIALCHARACTER |
| phoneValidation | 10 digit number validation |
| postalcodeValidation | Here postal code should be greater then or equal to 4 and if there is any alphabate avilable then it should be capitalize. |
