import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
    final String _texto;
    final void Function() _quandoSelecionado;

    Resposta(this._texto, this._quandoSelecionado);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 10),
      child: (
         RaisedButton(
           textColor: Colors.amber[100],
           color: Colors.red[500],
              child: Text(_texto),
              onPressed: _quandoSelecionado)),
            );
  }
}