import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/dimensions/landing_desktop_screen.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/dimensions/landing_mobile_screen.dart';
import 'package:ghost_vpn_site/presentation/screens/services_screens/adaptive_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(builder: (context, type) {
      if (type == DeviceTypeEnum.mobile) {
        return const LandingMobileScreen();
      }
      return const LandingDesktopScreen();
    });
  }
}