import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/app_bar_widget.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/button_document_widget.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/description_widget.dart';

class LandingWebScreen extends StatelessWidget {
  static const String route = '/landing_desktop';
  final DeviceTypeEnum type;
  const LandingWebScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    bool isWeb = type == DeviceTypeEnum.desktop;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppBarWidget(
        isLanding: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DescriptionWidget(
              textStyle:
                  TextStyle(color: Colors.white, fontSize: isWeb ? 38 : 26)),
          const SizedBox(
            height: 30,
          ),
          ButtonDocumentWidget(
            title: 'Privacy policy',
            isTerms: false,
            textStyle:
                isWeb ? defaultBlackWebTextStyle : defaultBlackMobileTextStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonDocumentWidget(
            title: 'Terms of Service',
            isTerms: true,
            textStyle:
                isWeb ? defaultBlackWebTextStyle : defaultBlackMobileTextStyle,
          ),
        ],
      ),
    );
  }
}
