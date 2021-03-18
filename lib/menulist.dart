import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<String> menu;

  MenuList(this.menu);

  String get menuList {
    String list;
    for (int i=0; i < menu.length; i++) {
      list = menu.elementAt(i);
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListTile(
        title: Text(menuList),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    );
  }
}
