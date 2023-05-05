import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final TextStyle textStyle;
  const AppBarWidget({
    super.key,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: Text('Добро пожаловать в GhostVPN', style: textStyle));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}