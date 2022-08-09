import 'package:flutter/material.dart';
import 'package:loveinaboxapp/models/love_menu_item.dart';

class MenuItems {
  static const recipes = LoveMenuItem('Recipes', Icons.restaurant);
  static const payments = LoveMenuItem('Payments', Icons.payment);
  static const help = LoveMenuItem('Help', Icons.help);

  static const allMenus = <LoveMenuItem>[
    recipes,
    payments,
    help,
    help,
    help,
    help
  ];
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://secure.gravatar.com/avatar/1a5cff8096aeebbb382886932b598df4"),
                      radius: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text("Nicolas E.",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
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
