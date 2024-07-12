import 'package:flutter_test/flutter_test.dart';
import 'package:teste_widget/shared/validators/email_validor.dart';

void main() {
  late EmailValidator emailValidator;

// usado para inicializar o objeto antes de cada teste dentro do grupo

  setUp(() {
    emailValidator = EmailValidator();
  });

  group('validaçãodo email', () {
    test('deve retornar umamensagem de erro caso o email seja nulo', () {
      final result = emailValidator.validate();

      expect(result, equals('O email é obrigatório'));
    });

    test('deve retornar umamensagem de erro caso o email seja vazio', () {
      final result = emailValidator.validate(email: '');

      expect(result, equals('O email é obrigatório'));
    });

    test('deve retornar uma mensagem de erro caso o email seja vazio', () {
      final result = emailValidator.validate(email: 'murilo');

      expect(result, equals('O email é inválido'));
    });

    test('deve retornar null caso o email seja valido', () {
      final result = emailValidator.validate(email: 'murilo@gmail.com');

      expect(result, isNull);
    });
  });
}
