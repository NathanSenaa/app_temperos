import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController precoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Condimento'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Nome do Condimento',
                ),
            ),
            TextField(
              controller: precoController,
              decoration: InputDecoration(
                labelText: 'Preço',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aqui vamos adicionar lógica para salvar o condimento na API
                print(
                    'Condimento: ${nomeController.text}, Preço: ${precoController.text}');
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
