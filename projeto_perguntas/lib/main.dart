import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/respostas.dart';
import 'package:projeto_perguntas/resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _perguntaAppState extends State<PerguntaApp> {
  int perguntaselecionada = 0;
    final _perguntas = const [
      {
        'pergunta': 'Qual a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'pergunta': 'Qual o seu animal favorito?',
        'respostas': ['Coelho', 'Cachorro', 'Gato', 'Leão']
      },
      {
        'pergunta': 'Qual seu heroi favorito?',
        'respostas': ['Superman', 'Batman', 'Homem de Ferro', 'Homem Aranha']
      }
    ];

    void _responder() {
      setState(() {
        perguntaselecionada++;
      });
    }

    bool get temPerguntaSelecionada {
      return perguntaselecionada < _perguntas.length;
    }
  Widget build(BuildContext context) {


    List<String> respostas = temPerguntaSelecionada ?
        _perguntas[perguntaselecionada].cast()['respostas'] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[perguntaselecionada]['pergunta'].toString()),
            //preencherResposta(),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ) :  Resultado(),
        ),
      );
}
}

class PerguntaApp extends StatefulWidget {
  _perguntaAppState createState() => _perguntaAppState();
}
