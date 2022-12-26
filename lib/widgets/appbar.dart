import 'package:flutter/material.dart';

class GeneratorAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Hello'),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
