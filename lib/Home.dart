import 'dart:math';

import 'package:cara_ou_coroa_flutter/Game.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  void _exibir() {

   var itens = ["cara", "coroa"];
   var numero = Random().nextInt(itens.length);

    Navigator.push(context,
        MaterialPageRoute(builder:
            (context) => game(itens[numero]))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibir,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
