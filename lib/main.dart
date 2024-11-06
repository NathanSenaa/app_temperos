import 'package:flutter/material.dart';
import 'catalogo_screen.dart';

void main() {
  runApp(SenaCondimentosApp());
}

class SenaCondimentosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sena Condimentos',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CatalogoScreen(),
    );
  }
}