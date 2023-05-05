import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const defaultWhiteWebTextStyle = TextStyle(color: Colors.white, fontSize: 45);

const defaultBlackWebTextStyle = TextStyle(color: Colors.black, fontSize: 35);

const defaultWhiteMobileTextStyle =
    TextStyle(color: Colors.white, fontSize: 23);

const defaultBlackMobileTextStyle =
    TextStyle(color: Colors.black, fontSize: 21);

const descriptionText =
    'GhostVPN - приложение, отвечающее на все стандарты качества и конфиденциальности при этом имея интуитивно понятный интерфейс, делающим его доступным для всех пользователей.';

Future<void> launchInWebViewWithoutJavaScript(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

enum DeviceTypeEnum {
  mobile,
  desktop,
}
