import 'package:app/questao.dart';
import 'package:app/resultado.dart';
import 'package:flutter/material.dart';
import 'botao_resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual sua cor favorita?',
      'resposta': ['Azul', 'Vermelho', 'Verde', 'Amarelo'],
      'pontos': 10
    },
    {
      'texto': 'Qual seu animal favorito?',
      'resposta': ['Gato', 'Cachorro', 'Perequito', 'Papagaio'],
      'pontos': 20
    },
    {
      'texto': 'Qual seu estilo musical favorito?',
      'resposta': ['Bregafunk', 'Blues', 'Forró', 'Tecnobrega'],
      'pontos': 30
    }
  ];
  bool isValidQuestion() {
    return _perguntaSelecionada < perguntas.length;
  }

  int _perguntaSelecionada = 0;
  int resultadoAcumulado = 0;

  void _responder() {
    setState(() {
      isValidQuestion() ? _perguntaSelecionada++ : null;
    });
    print("currentQuestionPoints:" + perguntas[_perguntaSelecionada].cast()['pontos'].toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Pergunta App'),
        ),
        body: Center(
          child: isValidQuestion()
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Questao(perguntas[_perguntaSelecionada].cast()['texto']),
                    Resultado(resultadoAcumulado,
                        perguntas[_perguntaSelecionada].cast()['pontos']),
                    ...perguntas[_perguntaSelecionada]
                        .cast()['resposta']
                        .map((e) => BotaoResposta(e, _responder))
                  ],
                )
              : null,
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
