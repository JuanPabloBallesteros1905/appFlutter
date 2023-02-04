import 'package:flutter/material.dart';

class IniciarScreen extends StatelessWidget {
  const IniciarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const <Widget>[
      Text(
        'Inicio De Sesion',
        style:
            TextStyle(color: Colors.white, fontSize: 28, fontFamily: 'inter'),
      )
    ]));
  }
}
