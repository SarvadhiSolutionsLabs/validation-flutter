part of validation;

class Validation {
  Validation({
    required this.isValidate,
    required this.message,
  }) : assert(message != null && isValidate != null);

  Validation.fromJson(Map<String, dynamic> json) {
    isValidate = json['isValidate'];
    message = json['message'];
  }

  late bool isValidate;
  late String message;
}
