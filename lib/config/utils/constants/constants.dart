import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const defaultWhiteTextStyle = TextStyle(color: Colors.white, fontSize: 45);

const defaultBlackTextStyle = TextStyle(color: Colors.black, fontSize: 35);

Future<void> launchInWebViewWithoutJavaScript(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
