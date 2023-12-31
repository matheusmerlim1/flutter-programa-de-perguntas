/*
ElevatedButton(
                    //Representa o RaisedButton mas o outro foi desatualizado
                    child: Resposta(respostas[0]),
                    onPressed: _responder
                    // passando uma função como parametro, sem os (),
                    ), // botão 1
                ElevatedButton(
                    //Representa o RaisedButton mas o outro foi desatualizado
                    child: Resposta(respostas[1]),
                    onPressed: _responder
                    //onPressed: () { print('Resposta 2 foi selecionada');

                    ), // botão 2
                ElevatedButton(
                    //Representa o RaisedButton mas o outro foi desatualizado
                    child: Resposta(respostas[2]),
                    onPressed: _responder
                    //onPressed: funcaoQueRetornaUmaOutraFuncao(),
                    // só chame uma função () se ela retornar uma função
                    // caso contrário chama sem usar ()
                    ), // botão 3
                ElevatedButton(
                    //Representa o RaisedButton mas o outro foi desatualizado
                    child: Resposta(respostas[3]),
                    onPressed: _responder
                    //onPressed: () => print('Resposta 4'),
                    // uma forma de retornar uma função
                    ), // botão 4
                ElevatedButton(
                    //Representa o RaisedButton mas o outro foi desatualizado
                    child: Resposta(respostas[4]),
                    onPressed: _responder
                    //onPressed: null, // null desabilita o botão
                    ),

*/

main() {
  var _perguntaSelecionada = 0; //contador da pergunta

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      // String e List por isso que é Object
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    },
  ];
  //List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];
}
