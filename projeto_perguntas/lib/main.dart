import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

main() {
  runApp(PerguntaApp());
}

class _perguntaAppState extends State<PerguntaApp> {

    final List<String> _perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];
    int perguntaselecionada = 0;

    void _responder() {
      setState(() {
      perguntaselecionada++;
      });
      print('Pergunta Respondida');
    }

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_perguntas[perguntaselecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget{
  _perguntaAppState createState() => _perguntaAppState();
}