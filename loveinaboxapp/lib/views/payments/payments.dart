// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loveinaboxapp/views/recipes/components/menu_widget.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.indigo,
      appBar: AppBar(
          leading: MenuWidget(),
          backgroundColor: Colors.red,
          title: Text('Payments')),
      body: Container(),
    );
  }
}
