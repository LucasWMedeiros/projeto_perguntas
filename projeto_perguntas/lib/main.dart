import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';

import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _perguntaAppState extends State<PerguntaApp> {
  int perguntaselecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1}
      ]
    },
    {
      'pergunta': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 5},
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1}
      ]
    },
    {
      'pergunta': 'Qual seu heroi favorito?',
      'respostas': [
        {'texto': 'Superman', 'pontuacao': 5},
        {'texto': 'Batman', 'pontuacao': 3},
        {'texto': 'Homem de Ferro', 'pontuacao': 5},
        {'texto': 'Homem Aranha', 'pontuacao': 10}
      ]
    }
  ];

  void _responder(int pontuacao) {
    setState(() {
      perguntaselecionada++;
      _pontuacaoTotal += pontuacao;
    });
    print(_pontuacaoTotal);
  }

  void reiniciarQuestionario(){
    setState(() {
      perguntaselecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaselecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: perguntaselecionada,
              responder: _responder)
          : Resultado(_pontuacaoTotal, reiniciarQuestionario),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _perguntaAppState createState() => _perguntaAppState();
}
