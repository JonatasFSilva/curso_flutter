import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

void main(List<String> args) {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      "texto": "Qual é a sua cor favorita?",
      "respostas": ["Preto", "Vermelho", "Verde", "Branco"],
    },
    {
      "texto": "Qual é o seu animal favorito?",
      "respostas": ["Coelho", "Cobra", "Elefante", "Leao"],
    },
    {
      "texto": "Qual é o seu instrutor favorito?",
      "respostas": ["Maria", "Joao", "Leo", "Predo"],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++; // incremento
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder)
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
