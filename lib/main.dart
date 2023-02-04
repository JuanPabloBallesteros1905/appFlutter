import 'package:flutter/material.dart';
import 'package:stream_app/app_routes/app_routes.dart';
import 'package:stream_app/screens/initial_page.dart';
import 'package:stream_app/themes/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoute.rutaInicial,
      routes: AppRoute.getApproutes(),
      home: const InitialScreen(),
      theme: Themes.lighTheme,
    );
  }
}
