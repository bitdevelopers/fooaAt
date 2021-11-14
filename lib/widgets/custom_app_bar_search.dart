import 'package:flutter/material.dart';

class CustomAppBarSearch extends StatelessWidget
    implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? title;
  final Widget? leading;
  final PreferredSizeWidget? bottom;

  const CustomAppBarSearch({
    Key? key,
    this.title,
    this.actions,
    this.leading,
    this.bottom,
  }) : super(key: key);

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
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
