import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:loveinaboxapp/models/love_menu_item.dart';

import 'package:loveinaboxapp/views/menu/menu.dart';
import 'package:loveinaboxapp/views/recipes/recipes.dart';

void main() {
  // Get.put<MyDrawerController>(MyDrawerController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends GetView<MyDrawerController> {
  LoveMenuItem currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      //style: DrawerStyle.style1,
      // controller: _.zoomDrawerController,
      menuScreen: Menu(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() => currentItem = item);
          }),
      mainScreen: Recipes(),
      // borderRadius: 24.0,
      // showShadow: true,
      // angle: -12.0,
      // drawerShadowsBackgroundColor: Colors.grey,
      // slideWidth: MediaQuery.of(context).size.width * 0.65,
    );
  }
}

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    update();
  }
}
