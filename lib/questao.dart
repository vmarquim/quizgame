import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.texto, {Key? key}) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: 32));
  }
}
