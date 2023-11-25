import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Image(
    //   image: AssetImage(
    //     "assets/images/Yo.png"
    //   ),
    //   width: 300,
    //   height: 300,
    //   fit: BoxFit.fill
    // );

    // return const Center(
    //   child: Image(
    //       image: AssetImage(
    //           "assets/images/Yo.png"
    //       ),
    //       width: 300,
    //       height: 300,
    //       fit: BoxFit.fill
    //   ),
    // );

    return const Align(
      alignment: Alignment.topCenter, // Alineación vertical centrada, horizontal no centrada
      child: Image(
        image: AssetImage("assets/images/Yo.png"),
        width: 300,
        height: 300,
        fit: BoxFit.fill,
      ),
    );

    // return Image(
    //     image: const NetworkImage(
    //         "https://media4.giphy.com/media/hZj44bR9FVI3K/giphy.webp?cid=82a1493bb8uzlymtyjvawfwnfc6w6vszbe3zspldiu8tpgs4&ep=v1_gifs_trending&rid=giphy.webp&ct=g"
    //     ),
    //   width: 300,
    //   height: 300,
    //   fit: BoxFit.fill,
    //   // color: Colors.black,
    //   errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
    //       return const Text("Error");
    //   },
    // );
  }
}
