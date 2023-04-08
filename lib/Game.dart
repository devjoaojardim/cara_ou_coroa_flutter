import 'package:flutter/material.dart';

class game extends StatefulWidget {
  String valor;

  game(this.valor, {super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {

  void _voltar() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var caminhoImagem = "images/moeda_cara.png";
    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    }else{
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: _voltar,
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
