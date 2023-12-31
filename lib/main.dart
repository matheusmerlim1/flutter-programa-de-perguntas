import 'package:aula_1_widget/questionario.dart';
import 'package:aula_1_widget/resultado.dart';
import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

/*Container é um widget que tem:
child = conteudo
padding é a caixa do conteudo
Border é a borda da caixa
Margin é a margem externa do conteudo
*/
class _PerguntaAppState extends State<PerguntaApp> {
  //_PerguntaAppState se tornou privado, não é obtido por quem está de fora do arquivo
  //classe permite que possa ter valores alterados
  var _perguntaSelecionada = 0; //contador da pergunta

  var _pontuacaoTotal = 0; //pontuacao total

  List<String> _escolhasFeitas = [];

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a cor favorita do Matheus?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 1},
        {'texto': 'Vermelho', 'pontuacao': 1},
        {'texto': 'Verde', 'pontuacao': 10},
        {'texto': 'Branco', 'pontuacao': 1},
        {'texto': 'Azul', 'pontuacao': 1},
      ],

      // String e List por isso que é Object
    },
    {
      'texto': 'Qual é o animal favorito do Matheus?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 1},
        {'texto': 'Cobra', 'pontuacao': 1},
        {'texto': 'Elefante', 'pontuacao': 1},
        {'texto': 'Leão', 'pontuacao': 1},
        {'texto': 'Cachorro', 'pontuacao': 1},
        {'texto': 'Onitorrinco', 'pontuacao': 10},
      ],

      // String e List por isso que é Object
    },
    {
      'texto': 'Qual é a pessoa que Matheus mais ama?',
      'respostas': [
        {'texto': 'Jurizivalda', 'pontuacao': 1},
        {'texto': 'Jurema', 'pontuacao': 1},
        {'texto': 'Juziscleide', 'pontuacao': 1},
        {'texto': 'Ariane', 'pontuacao': 10},
      ],
      // String e List por isso que é Object
    },
  ];

  bool get TemPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
    //verifica a quantidade de perguntas
  }

  /*void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('Pergunta respondida #2');
    };
    // funcao que retorna outra funcao
    // não é utilizada, apenas como exemplo
  }*/

  void _responder(int pontuacao, String nome) {
    if (TemPerguntaSelecionada) {
      // verifica se tem pergunta
      setState(() {
        // monitora a mudança e atualiza a página da atualização
        // verifica a _perguntaSelecionada
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
        _escolhasFeitas.add(nome);
      });
      //print(_perguntaSelecionada);
      // imprime a posição da pergunta
      // metodo tem que ser criado dentro da classe para ficar encapsulada
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
      _escolhasFeitas = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    // as list<String> para considerar que o Object é uma String
    // obtem a lista com as respostas
    // condição ? deu certo : deu errado

    //List<Widget> widgets =  respostas.map((t) => Resposta(t, _responder)).toList();
    // pode ser adicionado fora do widget
    // map converte uma lista de widget em uma lista de list
    // faz o for utilizando o map

    /*
    Uma forma de resolver o problema
    List<Widget> respostas = [];
    for (String textoResp
        in perguntas[_perguntaSelecionada].cast()['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }
    */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz do Matheus'),
          // title recebe um widget . não uma string
          // Text é um texto
          // barra de titulo
        ),
        body: TemPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado('Parabéns!!!', _pontuacaoTotal, _escolhasFeitas,
                _reiniciarQuestionario),
      ),
      // resposta final

      //Text('Olá Flutter!!!'),
      // body recebe um widget, recebe apenas 1 widget
      // Column recebe mais de um widget
    ); // Scaffold representa a estrutura da configuração
  }
}

class PerguntaApp extends StatefulWidget {
  // estado não é alterado, logo nenhum pode ser alterado
  //Stateless: dados não são alterados internamente, mas altera externamente e é renderizado denovo
  //Stateful: quando dados internamente são alterados ele é re-renderizado
  // é aconselhado utilizar o Stateless, mas se precisar alterar utiliza um construtor
  //CTRL . permite alterar o estado da classe

  _PerguntaAppState createState() {
    // converte um Stateless em Stateful
    return _PerguntaAppState();
  }
}
