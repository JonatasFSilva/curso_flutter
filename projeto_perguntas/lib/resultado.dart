import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Parabens!!!!";
    } else if (pontuacao < 12) {
      return "Voce e Bom!!!";
    } else if (pontuacao < 16) {
      return "Impressionante!!!!";
    } else {
      return "Nivel Jedi!!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.blue,
                textStyle: const TextStyle(fontSize: 18)),
            onPressed: quandoReiniciarQuestionario,
            child: const Text("Reiniciar"))
      ],
    );
  }
}
