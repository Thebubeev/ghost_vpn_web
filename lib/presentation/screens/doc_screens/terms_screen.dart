import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/app_bar_widget.dart';

class TermsScreen extends StatelessWidget {
  static const String route = '/terms';
  const TermsScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar:const AppBarWidget(
          isLanding: false,
        ),
        body: ListView(
          children:const [
            Padding(
              padding: EdgeInsets.only(
                      left: 40, right: 40, bottom: 40, top: 20),
              child:  Center(
                child: Text(
                  termsText,
                  style: defaultWhiteMobileTextStyle,
                ),
              ),
            )
          ],
        ));
  }
}
