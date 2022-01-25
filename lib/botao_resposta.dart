import 'package:flutter/material.dart';

class BotaoResposta extends StatelessWidget {
  const BotaoResposta(this.texto, this.resposta, {Key? key}) : super(key: key);

  final String texto;
  final void Function() resposta;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: ElevatedButton(
        onPressed: resposta,
        child: Text(
          texto,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)
          ),
      ),
    );
  }
}
