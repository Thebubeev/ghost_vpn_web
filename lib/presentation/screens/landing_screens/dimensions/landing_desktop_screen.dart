import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/app_bar_widget.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/button_document_widget.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/widgets/description_widget.dart';

class LandingDesktopScreen extends StatelessWidget {
  const LandingDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppBarWidget(
        textStyle: defaultWhiteWebTextStyle,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          DescriptionWidget(
              textStyle: TextStyle(color: Colors.white, fontSize: 38)),
          SizedBox(
            height: 30,
          ),
          ButtonDocumentWidget(
            url:
                'https://firebasestorage.googleapis.com/v0/b/ghostvpn-ea207.appspot.com/o/documents%2F%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0_%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8_%D0%B4%D0%BB%D1%8F.pdf?alt=media&token=f5b8cdb2-7bf8-437c-9f79-d7b1a7153ec0',
            title: 'Политика конфиденциальности',
            textStyle: defaultBlackWebTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          ButtonDocumentWidget(
              title: 'Пользовательское соглашение',
              url:
                  'https://firebasestorage.googleapis.com/v0/b/ghostvpn-ea207.appspot.com/o/documents%2F%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B5_%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5.pdf?alt=media&token=4fe1ba64-29a6-4955-802f-a0713cc048af',
              textStyle: defaultBlackWebTextStyle)
        ],
      ),
    );
  }
}
