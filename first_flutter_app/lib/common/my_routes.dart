import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/my_home_page.dart';
import 'package:first_flutter_app/pages/login_page.dart';
import 'package:first_flutter_app/pages/play_list_pages.dart';
import 'package:first_flutter_app/pages/now_playing_page.dart';
import 'package:page_transition/page_transition.dart';

// ignore_for_file: constant_identifier_names
const String ROUTE_HOME = "/home";
const String ROUTE_LOGIN = "/login";
const String ROUTE_PLAY_LIST = "/play_list";
const String ROUTE_NOW_PLAYING = "/now_playing";

class MyRoutes {
  // static generateRoutes(RouteSettings route) {
  //   switch (route.name) {
  //     case "/home":
  //       return MaterialPageRoute(builder: (_) => const MyHomePage());
  //     case "/login":
  //       return MaterialPageRoute(builder: (_) => const LoginPage());
  //     case "/play_list":
  //       return MaterialPageRoute(builder: (_) => const PlaylistPage());
  //     case "/now_playing":
  //       return MaterialPageRoute(builder: (_) => const NowPlayingPage());
  //     default:
  //       return MaterialPageRoute(builder: (_) => const LoginPage());
  //   }
  // }

  static generateRoutes(RouteSettings route) {
    switch (route.name) {
      case "/home":
        return PageTransition(child: const MyHomePage(), type: PageTransitionType.rotate, settings: route, alignment: Alignment.center);
      case "/login":
        return PageTransition(child: const LoginPage(), type: PageTransitionType.rotate, settings: route, alignment: Alignment.center);
      case "/play_list":
        return PageTransition(child: const PlaylistPage(), type: PageTransitionType.rotate, settings: route, alignment: Alignment.center);
      case "/now_playing":
        return PageTransition(child: const NowPlayingPage(), type: PageTransitionType.rotate, settings: route, alignment: Alignment.center);
      default:
        return PageTransition(child: const LoginPage(), type: PageTransitionType.rotate, settings: route, alignment: Alignment.center);
    }
  }
}
