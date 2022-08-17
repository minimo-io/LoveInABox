import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
// import 'package:get/get.dart';
import 'package:loveinaboxapp/models/love_menu_item.dart';
import 'package:loveinaboxapp/views/help/help.dart';

import 'package:loveinaboxapp/views/menu/menu.dart';
import 'package:loveinaboxapp/views/payments/payments.dart';
import 'package:loveinaboxapp/views/recipes/recipes.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Zoom Drawer Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     home: MyHomePage(),
  //   );
  // }
}

class _HomePageState extends State<HomePage> {
  final _drawerController = ZoomDrawerController();
  LoveMenuItem currentItem = MenuItems.recipes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
      builder: (context) => ZoomDrawer(
        controller: _drawerController,
        borderRadius: 20,
        showShadow: true,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width * 0.70,
        style: DrawerStyle.defaultStyle,
        menuBackgroundColor: Colors.indigo,
        drawerShadowsBackgroundColor: Colors.orangeAccent,
        menuScreen: Builder(
          builder: (context) => Menu(
              currentItem: currentItem,
              onSelectedItem: (item) {
                setState(() => currentItem = item);
                ZoomDrawer.of(context)!.close();
              }),
        ),
        mainScreen: getScreen(),
      ),
    ));
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.recipes:
        return Recipes();
      case MenuItems.payments:
        return Payments();
      case MenuItems.help:
        return Help();
      default:
        return Recipes();
    }
  }
}
