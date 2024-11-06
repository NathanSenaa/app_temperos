import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.brown[700]!, Colors.orange[300]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            'Sena Condimentos',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 5.0,
                  color: Colors.black45,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
