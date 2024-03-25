import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main(List<String> args) {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++; // incremento
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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
    List<Widget> respostas = [];
    for (String textResp
        in perguntas[_perguntaSelecionada].cast()["respostas"]) {
      respostas.addAll(<Widget>[Resposta(textResp, _responder)]);
    }
    ;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]["texto"].toString()),
            ...respostas,
          ],
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
