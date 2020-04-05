import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    //print(widget.valor);
    var caminhoImagem = "image/moeda_cara.png";
    if(widget.valor == "cara"){
      caminhoImagem = "image/moeda_cara.png";
    }else{
      caminhoImagem = "image/moeda_coroa.png";
    }


    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(106, 195, 153, 0.95),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(caminhoImagem),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Column(
                children: <Widget>[

                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset("image/botao_voltar.png"),
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
