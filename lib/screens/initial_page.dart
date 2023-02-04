import 'package:flutter/material.dart';

import '../widgets/custom_initial.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color.fromARGB(10, 10, 10, 10),
      body: CustomInitial(),
    );
  }
}
