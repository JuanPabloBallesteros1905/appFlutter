import 'package:flutter/material.dart';

class CustonImputs extends StatelessWidget {
  const CustonImputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(bottom: 10),
          child: const Text(
            'Usuario',
            style: TextStyle(color: Colors.purple, fontFamily: 'inter'),
          ),
        ),
        TextFormField(
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(bottom: 10),
          child: const Text(
            'Contraseña',
            style: TextStyle(color: Colors.purple, fontFamily: 'inter'),
          ),
        ),
        TextFormField(
          obscureText: true,
          style: const TextStyle(color: Colors.white),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Iniciar!',
                style: TextStyle(color: Colors.black, fontFamily: 'inter'),
              )),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'register');
            },
            child: const Text('Registrate aqui'))
      ],
    );
  }
}
