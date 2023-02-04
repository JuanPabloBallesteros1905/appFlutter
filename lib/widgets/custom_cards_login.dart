import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:stream_app/data/data_receta.dart';
import 'package:stream_app/widgets/custom_inputs_login.dart';
import '../model_carrusel/model_receta.dart';

class CustomLoggin extends StatefulWidget {
  const CustomLoggin({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomLoggin> createState() => _CustomLogginState();
}

class _CustomLogginState extends State<CustomLoggin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            CarouselSlider.builder(
                itemCount: carruselImage.length,
                itemBuilder: ((context, index, realIndex) {
                  final carruselImag = carruselImage[index];
                  return CardImage(
                    carruselImage: carruselImage[index],
                  );
                }),
                options: CarouselOptions(
                  height: 300,
                  autoPlay: true,
                  autoPlayCurve: Curves.easeIn,
                  enlargeCenterPage: true,
                  autoPlayInterval: const Duration(
                    seconds: 3,
                  ),
                  scrollDirection: Axis.horizontal,
                )),
            Column(
              children: [
                SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 35, top: 50, bottom: 50),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Inicio De Sesion',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'inter'),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 35, right: 35),
                      child: CustonImputs(),
                    ),
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  final Receta carruselImage;
  const CardImage({super.key, required this.carruselImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {},
          child: FadeInImage(
              placeholder: const AssetImage("assets/images/loading.gif"),
              image: AssetImage(carruselImage.image),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
