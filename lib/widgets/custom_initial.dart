import 'package:flutter/material.dart';
import 'package:stream_app/app_routes/app_routes.dart';

class CustomInitial extends StatelessWidget {
  const CustomInitial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRoutes = AppRoute.menusOptions;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 350,
          child: const FadeInImage(
            fit: BoxFit.cover,
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(
                'https://melonapp.com/blog/content/images/size/w1000/2021/12/pexels-ron-lach-7848992-3.jpg'),
            width: double.infinity,
            height: 307,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 94, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
              Text(
                'Conversa',
                style: TextStyle(
                    fontSize: 28, color: Colors.white, fontFamily: 'inter'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Disfruta',
                style: TextStyle(
                    fontSize: 28, color: Colors.white, fontFamily: 'inter'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Crea',
                style: TextStyle(
                    fontSize: 28, color: Colors.white, fontFamily: 'inter'),
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: ((context) => const LoginScreen())
              //         )
              //         );

              Navigator.pushNamed(context, 'login');
            },
            child: const Text(
              'VAMOS!',
              style: TextStyle(color: Colors.black, fontFamily: 'inter'),
            ))
      ],
    );
  }
}
