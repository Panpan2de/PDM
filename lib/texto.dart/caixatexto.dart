import 'package:flutter/material.dart';

class CaixaTexto extends StatelessWidget {
  final label;
  final pass;
  const CaixaTexto({super.key, required this.label, this.pass = false});

  CaixaTexto.senha({super.key,
    required this.label,
    this.pass = true
   }
  ); 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: TextFormField(       
          validator: (value) {
            if (value!.isEmpty){
              return 'por favor, preencha este campo';
            }
          },
          obscureText: pass,
            decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
            ),
          ),
        ),
      ),
    );
  }
}