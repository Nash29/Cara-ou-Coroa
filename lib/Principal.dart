
import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  void _exibirResultado(){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
        context,
        MaterialPageRoute (builder: (context)=> Resultado(resultado))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(106, 195, 153, 0.95),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("image/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[

                  GestureDetector(
                    onTap: _exibirResultado,
                    child: Image.asset("image/botao_jogar.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
