import 'package:flutter/material.dart';
import 'package:loveinaboxapp/models/love_menu_item.dart';

class MenuItems {
  static const payment = LoveMenuItem('Payment', Icons.payment);
  static const food = LoveMenuItem('Food', Icons.face);

  static const allMenus = <LoveMenuItem>[payment, food];
}

class Menu extends StatelessWidget {
  final LoveMenuItem currentItem;
  final ValueChanged<LoveMenuItem> onSelectedItem;

  const Menu(
      {required this.currentItem, required this.onSelectedItem, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Spacer(),
              ...MenuItems.allMenus.map(buildMenuItem).toList(),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(LoveMenuItem item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => onSelectedItem(item),
        ),
      );
}
