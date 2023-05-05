import 'package:flutter/material.dart';

class Logado extends StatelessWidget {
  const Logado({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('logado'),
      ),
      body: Text(
      'logado com sucesso',
      textScaleFactor: 2,
      ),
    );
  }
}