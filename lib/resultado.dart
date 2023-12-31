import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;

  final int pontuacao;

  final void Function() quandoReiniciarQuestionario;

  final List<String> selecionados;
  Resultado(this.texto, this.pontuacao, this.selecionados,
      this.quandoReiniciarQuestionario);

  String get fraseResultado {
    String escolha = '';

    if (pontuacao < 5) {
      escolha = 'Esforçado, você errou todas as alternativas';
    } else if (pontuacao < 13) {
      escolha = 'Esperto, acertou 1 das alternativas';
    } else if (pontuacao < 22) {
      escolha = 'Inteligente, acertou 2 das alternativas';
    } else {
      escolha = 'Jedi, acertou todas as alternativas ';
    }
    return 'Voce é $escolha';
  }

  String selecao() {
    String texto = '';
    for (String i in selecionados) {
      texto = '$texto $i,';
    }

    return texto;
  }

  @override
  Widget build(BuildContext context) {
    // formatação do texto da questão
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // texto parabens
        Center(
          child: Text(
            texto,
            style: TextStyle(fontSize: 28),
          ),
        ),
        // texto pontuacao
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        // texto escolhas feitas
        Center(
          child: Text(
            'Suas escolhas foram:\n${selecao()}',
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 187, 15, 218),
          ),
          child: Text('Reiniciar?',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              )),
        )
      ],
    );
  }
}
