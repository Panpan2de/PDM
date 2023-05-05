import 'package:flutter/material.dart';
import 'package:jogakilogin/sucesso.dart';

class Botao extends StatelessWidget {
  final nBotao;
  final formKey;
  Botao({
    super.key, 
    required this.nBotao, 
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: 100,
          height: 50,
        ),
      child:ElevatedButton(
          onPressed: () {
            if(formKey.currentState.validate()){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar( content: Text('Formulário Válido'),
                ),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Logado(),
                ),
              );
            }
          }, 
      child: Text(
          nBotao,
          textScaleFactor: 1.4,
          ),
        ),
      ),
    );
  }
}