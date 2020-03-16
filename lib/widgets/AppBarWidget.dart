import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  AppBarWidget(this.title);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _AppBarWidgetState();
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarWidgetState extends State<AppBarWidget> {
  _AppBarWidgetState();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        widget.title,
      ),
    );
  }
}
