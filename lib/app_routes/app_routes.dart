import 'package:flutter/cupertino.dart';
import 'package:stream_app/models/menu_options.dart';
import 'package:stream_app/screens/screens.dart';

class AppRoute {
  static const rutaInicial = 'home';

  static final menusOptions = <MenuOptions>[
   // MenuOptions(route: 'home', screen: const InitialScreen()),
    MenuOptions(route: 'login', screen: const LoginScreen()),
    MenuOptions(route: 'register', screen: const RegisterScreen())
  ];

  
  static Map<String, Widget Function(BuildContext)> getApproutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const InitialScreen()});

    for (final options in menusOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
}


  




