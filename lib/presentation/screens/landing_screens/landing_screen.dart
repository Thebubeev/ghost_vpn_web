import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/landing_web_screen.dart';
import 'package:ghost_vpn_site/presentation/screens/services_screens/adaptive_screen.dart';

class LandingScreen extends StatelessWidget {
  static const String route = '/home';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(builder: (context, type) {
      return LandingWebScreen(
        type: type,
      );
    });
  }
}
