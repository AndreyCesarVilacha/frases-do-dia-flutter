import 'package:flutter/material.dart';

//criando a função principal
void main(){
  //chamando a função runApp para executar o nosso App
  runApp(MaterialApp(
    //usando a propriedade "title" do MaterialApp
    title: "Frases do dia",
    //Passando o Widget "Column" para a propriedade home
    home: Container(
      color: Colors.white,
      child: Column(
        children: [
          TextButton(
            onPressed: (){
              print("Botão pressionado");
            }, 
            child: Text(
              "Clique Aqui",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            )
          )
        ],
      ),
    ),
  ));
}