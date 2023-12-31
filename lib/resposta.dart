import 'package:flutter/material.dart';

/*class _RespostaAppState extends State<Resposta> {
  var escolhas = [];

  void escolha(int posicao) => escolhas.add(posicao);
}
*/
class Resposta extends StatelessWidget {
  final String texto;
  Resposta(this.texto, this.quandoSelecionado);
  // construtor resposta
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity, // tamanho do container
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 187, 15, 218),
              // cor da caixa do texto
              textStyle: TextStyle(
                  fontSize: 20, //tamanho do texto
                  color: Colors.white) // cor do texto
              ),
          //Representa o RaisedButton mas o outro foi desatualizado
          child: Text(texto),
          onPressed: quandoSelecionado
          //quando apertar o botão chama a função quando selecionado
          // uma forma de retornar uma função
          ),
      color: Colors.grey, // cor da caixa do container
      // a ordem com que programa interfere na observação
      // como o vermelho veio depois ele fica no fundo do código
    );
  }
}

/*ElevatedButton(
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

