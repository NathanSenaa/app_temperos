import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  final List<Map<String, dynamic>> temperos = [
    {
      'nome': 'Colorau',
      'preco': 4.0,
      'imagem': 'assets/colorau.jpg'
    },
    {
      'nome': 'Açafrão',
      'preco': 15.0,
      'imagem': 'assets/acafrao.jpg'
    },
    {
      'nome': 'Chimichurri',
      'preco': 12.0,
      'imagem': 'assets/chimichurri.jpg'
    },
    {
      'nome': 'Lemon Pepper',
      'preco': 10.0,
      'imagem': 'assets/lemon_pepper.jpg'
    },
    {
      'nome': 'Orégano',
      'preco': 3.5,
      'imagem': 'assets/oregano.jpg'
    },
    {
      'nome': 'Pimenta do Reino',
      'preco': 8.0,
      'imagem': 'assets/pimenta_reino.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo de Temperos'),
      ),
      body: ListView.builder(
        itemCount: temperos.length,
        itemBuilder: (context, index) {
          final tempero = temperos[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                tempero['imagem'],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(tempero['nome']),
              subtitle: Text('R\$ ${tempero['preco'].toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
