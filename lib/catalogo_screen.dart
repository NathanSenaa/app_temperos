import 'package:flutter/material.dart';
import 'cadastro_screen.dart';

class CatalogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Condimentos'),
      ),
      body: Center(
        child: Text('Lista de Condimentos Cadastrados Aparecerá Aqui'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CadastroScreen()),
          );
        },
        child: Icon(Icons.add),
        tooltip: 'Adicionar Condimento',
      ),
    );
  }
}
