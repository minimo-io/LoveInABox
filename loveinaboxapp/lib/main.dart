import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:loveinaboxapp/views/menu/menu.dart';
import 'package:loveinaboxapp/views/recipes/recipes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Menu(),
      mainScreen: Recipes(),
    );
  }
}
