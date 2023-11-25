import 'package:flutter/material.dart';

class PlayingNow extends StatelessWidget {
  const PlayingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/alos.png"),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(1000), // Ajusta el radio para que coincida con el borde
              child: const Image(
                image: AssetImage("assets/images/Yo.png"),
                width: 140,
                height: 140,
              ),
            ),
          ],
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              Text(
                "Enero",
                style: TextStyle(fontSize: 50, letterSpacing: 10, fontFamily: "Teko", color: Colors.blueGrey),
              ),
              Text(
                "Smitherens",
                style: TextStyle(fontSize: 20, letterSpacing: 5, fontFamily: "Teko", color: Colors.blueGrey),
              )
            ],
          ),
          Icon(Icons.favorite_border_outlined, color: Colors.blueGrey, size: 30)
        ]),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "00:04",
              style: TextStyle(fontSize: 30, letterSpacing: 10, fontFamily: "Teko", color: Colors.blueGrey),
            )
          ],
        ),
        IconTheme(
          data: IconThemeData(color: Colors.pink[300], size: 45), // Ajusta el color y el tamaño según tus preferencias
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center, // Cambiado de spaceEvenly a spaceBetween
            children: [
              Icon(Icons.repeat_outlined),
              Icon(Icons.skip_previous),
              Icon(Icons.play_circle),
              Icon(Icons.skip_next),
              Icon(Icons.volume_up_rounded),
            ],
          ),
        )
      ],
    );
  }
}
