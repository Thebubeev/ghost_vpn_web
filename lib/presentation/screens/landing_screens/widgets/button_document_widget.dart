// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';

class ButtonDocumentWidget extends StatelessWidget {
  final String title;
  final String url;
  final TextStyle textStyle;
  const ButtonDocumentWidget({
    super.key,
    required this.title,
    required this.url,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          onPressed: () async {
            html.window.open(url, title);
          },
          child: Text(
            title,textAlign: TextAlign.center,
            style: textStyle,
          )),
    );
  }
}