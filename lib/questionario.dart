// ignore_for_file: use_key_in_widget_constructors

import 'package:aula_1_widget/questao.dart';
import 'package:aula_1_widget/resposta.dart';
import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int, String) quandoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

  bool get TemPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
    //verifica a quantidade de perguntas
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = TemPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Column(
      // TemPerguntaSelecionada verifica se tem perguntas, caso contrário não envia elas
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'].toString(),
            () => quandoResponder(int.parse(resp['pontuacao'].toString()),
                (resp['texto'].toString())),
          );
        }).toList(),

        // ...  significa que o valor será atualizado
        // pega a lista de resposta e converte em uma lista de widgets, converte o resultado em uma lista
        //... respostas busca os valores da lista e coloca dentro da outra lista
        //Resposta('questão 2', _responder),

        // busca no map o string de texto
        // verifica a pergunta selecionada
      ],
    );
  }
}
