import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.resultadoAcumulado, this.currentQuestionPoints,
      {Key? key})
      : super(key: key);
  final int resultadoAcumulado;
  final int currentQuestionPoints;

  Text sumPoints(int resultadoAcumulado, int currentQuestionPoints) {
    resultadoAcumulado = resultadoAcumulado + currentQuestionPoints;
    print("currentQuestionPoints in Resultado Widget is $currentQuestionPoints");
    print("resultadoAcumulado in Resultado Widget is $resultadoAcumulado");
    return Text(
      resultadoAcumulado.toString(),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
       ),);
  }

  @override
  Widget build(BuildContext context) {
    return sumPoints(resultadoAcumulado, currentQuestionPoints);
  }
}
