import 'package:flutter/material.dart';
import 'package:stream_app/widgets/custom_register.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                height: 100,
                margin: const EdgeInsets.only(left: 35, top: 150, bottom: 15),
                child: const Text(
                  'Registrate',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'inter', fontSize: 30),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 35, bottom: 10),
                child: const Text(
                  'Usuario',
                  style: TextStyle(color: Colors.purple, fontFamily: 'inter'),
                ),
              ),
              const CustomRegister(),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 35, bottom: 10),
                child: const Text(
                  'Email',
                  style: TextStyle(color: Colors.purple, fontFamily: 'inter'),
                ),
              ),
              const CustomRegister(inputType: TextInputType.emailAddress),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 35, bottom: 10),
                child: const Text(
                  'Contraseña',
                  style: TextStyle(color: Colors.purple, fontFamily: 'inter'),
                ),
              ),
              const CustomRegister(pass: true),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 35, bottom: 10),
                child: const Text(
                  'Repite al contraseña',
                  style: TextStyle(color: Colors.purple, fontFamily: 'inter'),
                ),
              ),
              const CustomRegister(
                pass: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  child: const Text(
                    'Crear',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {}, child: const Text('Ya tengo cuenta!'))

      
            ],
          ),
        ));
  }
}
