// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loveinaboxapp/views/recipes/components/menu_widget.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
      appBar: AppBar(
          leading: MenuWidget(),
          backgroundColor: Colors.amber,
          title: Text('Help')),
      body: Container(),
    );
  }
}
