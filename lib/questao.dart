import 'package:flutter/material.dart';

// classe utilizada para retornar o texto e outras informações
class Questao extends StatelessWidget {
  final String texto;
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    // formatação do texto da questão
    return Container(
      width: double.infinity, //pega o tamanho da tela
      margin: EdgeInsets.all(10), // cria uma margem igual para todos os lados
      child: Text(
        texto,
        style: TextStyle(fontSize: 28), // tamanho da fonte
        textAlign: TextAlign.center,
        // alinha o texto no centro da caixa, precisa do container pra centralizar na tela
      ),
    );
  }
}
