import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';

main() {
  runApp(PerguntaApp());
}

class _perguntaAppState extends State<PerguntaApp> {

  Widget build(BuildContext context) {
   
    int _perguntaselecionada = 0;

    void _responder() {
      setState(() {
      _perguntaselecionada++;
      });
    }

    final _perguntas = [
      {
      'pergunta' : 'Qual a sua cor favorita?',
      'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
      'pergunta' : 'Qual o seu animal favorito?',
      'respostas' : ['Coelho', 'Cachorro', 'Gato', 'Leão']
      },
      {
        'pergunta' : 'Qual seu heroi favorito?',
        'respostas' : ['Superman', 'Batman', 'Homem de Ferro', 'Homem Aranha']
      }
    ];

    List<Widget> respostas = [];
    for (String textoRespo in _perguntas[_perguntaselecionada].cast()['respostas']) {
      respostas.add(Resposta(textoRespo, _responder));
    }
    



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_perguntas[_perguntaselecionada]['pergunta'].toString()),
           ...respostas,
          ],
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget{
  _perguntaAppState createState() => _perguntaAppState();
}