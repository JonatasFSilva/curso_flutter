import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  const Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return       const ElevatedButton(
                onPressed: null, child: Text("Resposta 1"));
    
  }
}
