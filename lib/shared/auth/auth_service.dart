
import 'package:teste_widget/shared/validators/email_validor.dart';
import 'package:teste_widget/shared/validators/password_validator.dart';

class Auth {
  register(String? email, String? password) {
    final emailError = EmailValidator().validate(email: email);
    final passwordError = PasswordValidator().validate(password: password);

    return emailError ?? passwordError;
  }
}
