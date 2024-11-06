import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MockClient extends Mock implements http.Client {}

void main() {
  group('Testes de API com json-server', () {
    test('Retorna dados corretamente', () async {
      final client = MockClient();
      when(client.get(Uri.parse('http://localhost:3000/temperos')))
          .thenAnswer((_) async => http.Response(
              jsonEncode([
                {'id': 1, 'nome': 'Pimenta', 'preco': 5.0},
                {'id': 2, 'nome': 'Orégano', 'preco': 3.5}
              ]),
              200));

      final resposta = await client.get(Uri.parse('http://localhost:3000/temperos'));
      final dados = jsonDecode(resposta.body);

      expect(dados[0]['nome'], 'Pimenta');
      expect(dados[1]['preco'], 3.5);
    });

    test('Lança exceção em caso de erro', () async {
      final client = MockClient();
      when(client.get(Uri.parse('http://localhost:3000/temperos')))
          .thenAnswer((_) async => http.Response('Erro no servidor', 500));

      expect(() async => await client.get(Uri.parse('http://localhost:3000/temperos')),
          throwsA(isA<Exception>()));
    });
  });
}
