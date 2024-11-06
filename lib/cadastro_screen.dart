import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController precoController = TextEditingController();

  CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Condimento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome do Condimento',
                ),
            ),
            TextField(
              controller: precoController,
              decoration: const InputDecoration(
                labelText: 'Preço',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aqui vamos adicionar lógica para salvar o condimento na API
                print(
                    'Condimento: ${nomeController.text}, Preço: ${precoController.text}');
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
