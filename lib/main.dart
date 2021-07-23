//Importando o Material.dart
import 'package:flutter/material.dart';
//Importando a biblioteca de matematica do dart
import 'dart:math';

//Criando a função principal
void main() {
  //Passando um Material app para a função runApp
  runApp(MaterialApp(
    //Tirando a bandeira de debug do App
    debugShowCheckedModeBanner: false,
    //Passando o widget "Home()"
    home: Home(),
  ));
}

//Criando o widget Stateful chamado Home
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

//Criando criando o Stato do widget "home"
class _HomeState extends State<Home> {

  //Dummy data para testa a funcionalidade do app sem back-end
  //Criando uma lista para armazenar o Dummy data
  var _frases =[
    "A persistência é o caminho do êxito.",
    "Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas acima de tudo, seja você sempre.",
    "Só existe um êxito: a capacidade de levar a vida que se quer.",
    "A vitalidade é demonstrada não apenas pela persistência, mas pela capacidade de começar de novo.",
    "A coragem não é ausência do medo; é a persistência apesar do medo.",
    "Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.",
    "O homem não teria alcançado o possível se, repetidas vezes, não tivesse tentado o impossível.",
    "Todo mundo é capaz de sentir os sofrimentos de um amigo. Ver com agrado os seus êxitos exige uma natureza muito delicada.",
    "Força de ânimo e coragem na adversidade servem para conquistar o êxito, mais do que um exército.",
    "Uma auto-imagem forte e positiva é a melhor preparação possível para o sucesso.",
    "Não deixe que as pessoas te façam desistir daquilo que você mais quer na vida. Acredite. Lute. Conquiste. E acima de tudo, seja feliz!",
    "Talento é dom, é graça. E sucesso nada tem a ver com sorte, mas com determinação e trabalho.",
    "A disciplina é a mãe do êxito.",
    "A raiz do mal reside no fato de se insistir demasiadamente que no êxito da competição está a principal fonte de felicidade.",
  ];

  //Criando uma frase inicial que inidica como funciona o app
  var _fraseGerada = "Clique abaixo para gerar uma frase";

  //Função responsavel por gerar frases aleatorias
  void _gerarFrase(){
    //var responsavel por gerar numeros aleatorios
    var numeroSorteado = Random().nextInt(_frases.length);
    
    //Toda vez que for chamada a função ela atualiza o app com o novo estado dele
    setState(() {
      //fazendo a frase mostrar valores diferentes
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  //Criando o corpo do app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.blue[300],
      ),
      body: Container(
        //fazendo o container ocupar todo o espaço da tela
        width: double.infinity,
        //colocando um padding nos elementos do container
        padding: EdgeInsets.all(16),
        //Colocando todos os widgets do containers em uma coluna
        child: Column(
          //Colocando espaçamento entre os widgets
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //Centralizando os widgets
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Colocando uma imagem no app
            Image.asset("images/logo.png"),
            //Colocando um texto no app
            Text(
              //usando a var _fraseGerada para ter textos dinamicos
              _fraseGerada,
              //Alinhado o texto
              textAlign: TextAlign.justify,
              //configurando o estilo do texto
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            //Criando o botao para gerar novas frases
            ElevatedButton(
              //Passando a referencia a funçao _gerarFrase
              onPressed: _gerarFrase,
              //Colocando texto no botao
              child: Text(
                "Nova mensagem",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Estilo do botao
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
