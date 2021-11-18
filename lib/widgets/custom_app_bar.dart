import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? title;
  final Widget? leading;

  // ignore: use_key_in_widget_constructors
  const CustomAppBar({
    this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).accentColor,
      elevation: 0,
      title: title,
      centerTitle: true,
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
