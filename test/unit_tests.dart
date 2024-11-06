import 'package:flutter_test/flutter_test.dart';

bool verificarDisponibilidade(String tempero) {
  return tempero.isNotEmpty;
}

void main() {
  group('Testes Unitários - Casos de Uso', () {
    test('Deve retornar verdadeiro quando o tempero está disponível', () {
      bool resultado = verificarDisponibilidade('Pimenta');
      expect(resultado, isTrue);
    });

    test('Deve retornar falso quando o tempero não está disponível', () {
      bool resultado = verificarDisponibilidade('');
      expect(resultado, isFalse);
    });
  });
}
