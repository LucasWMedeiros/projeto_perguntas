// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciar;

  Resultado(this.pontuacao, this.reiniciar);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi!';
    }
  }

  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
          child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 30),
      )),
      FlatButton(
        child: Text(
          'Reiniciar',
          style: TextStyle(fontSize: 18),
        ),
        textColor: Colors.amber[100],
        color: Colors.red[500],
        onPressed: reiniciar,
      )
    ]);
  }
}
