import 'package:flutter_test/flutter_test.dart';

bool verificarDisponibilidade(String tempero) {
  return tempero.isNotEmpty;
}

void main() {
  group('Testes Unitários', () {
    test('Retorna verdadeiro quando o tempero está disponível', () {
      expect(verificarDisponibilidade('Pimenta'), isTrue);
    });

    test('Retorna falso quando o tempero não está disponível', () {
      expect(verificarDisponibilidade(''), isFalse);
    });
  });
}
