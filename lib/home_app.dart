  import 'package:card_swiper/card_swiper.dart';
  import 'package:flutter/material.dart';

  class HomeApp extends StatelessWidget {
    // Add the key parameter to the constructor
    const HomeApp({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text('Home App')),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.amber,
              child: Swiper(
                itemCount: 10,
                autoplay: true,
                itemBuilder: (context, index) {
                    return FadeInImage(placeholder: AssetImage("assets/notfound.jpg"), 
                    image: NetworkImage(        
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${index + 1}.png',
));
                },
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              color: Colors.red,
            ),
          ],
        ),
      );
    }
  }
