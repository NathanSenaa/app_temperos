import 'package:flutter/material.dart';
import 'cadastro_screen.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Condimentos'),
      ),
      body: const Center(
        child: Text('Lista de Condimentos Cadastrados Aparecerá Aqui'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CadastroScreen()),
          );
        },
        tooltip: 'Adicionar Condimento',
        child: Icon(Icons.add),
      ),
    );
  }
}
