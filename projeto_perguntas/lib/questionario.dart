import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) quandoResponder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()["respostas"]
            as List<Map<String, Object>>
        : null;
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]["texto"].toString()),
        ...respostas!.map((resp) {
          return Resposta(
            resp["texto"].toString(),
            () => quandoResponder(int.parse(resp["pontuacao"].toString())),
          );
        }),
      ],
    );
  }
}
