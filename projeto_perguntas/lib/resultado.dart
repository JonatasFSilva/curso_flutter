import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao);

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
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
