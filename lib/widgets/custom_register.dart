import 'package:flutter/material.dart';

class CustomRegister extends StatelessWidget {
  final TextInputType? inputType;
  final bool pass;

  const CustomRegister({
    Key? key,
    this.inputType,
    this.pass = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        children: <Widget>[
          TextFormField(
            obscureText: pass,
            keyboardType: inputType,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
