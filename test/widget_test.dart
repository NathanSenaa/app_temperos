import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_temperos/cadastro_screen.dart';

void main() {
  testWidgets('Verifica exibição do formulário de cadastro', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: CadastroScreen()));

    expect(find.text('Nome do Tempero'), findsOneWidget);
    expect(find.text('Preço (R\$)'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
