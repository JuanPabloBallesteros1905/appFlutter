import 'package:flutter/material.dart';
import '../widgets/custom_cards_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.black, body: CustomLoggin());
  }
}
