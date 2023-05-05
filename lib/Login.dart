import 'package:flutter/material.dart';
import 'package:jogakilogin/botaao.dart';
import 'package:jogakilogin/texto.dart/caixatexto.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 600, right: 600),
            child: Column(
               children: [               
                Container(child: Image.asset('assets/jogaki.png.png'),
                height: 300,
                width: 300,
               ),
                  CaixaTexto(label: 'Digite seu Email'
               ),
                  CaixaTexto.senha(label: 'Digite sua senha'
               ),
                  Botao(nBotao: ('Entrar'), formKey: _formKey
               ),
            ],
          ),
        ),
      ),
    );
  }
}