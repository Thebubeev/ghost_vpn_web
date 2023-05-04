import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          elevation: 0,
          title: const Text('Добро пожаловать в GhostVPN',
              style: defaultWhiteTextStyle)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () async {
                  html.window.open(
                      'https://firebasestorage.googleapis.com/v0/b/ghostvpn-ea207.appspot.com/o/documents%2F%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0_%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8_%D0%B4%D0%BB%D1%8F.pdf?alt=media&token=f5b8cdb2-7bf8-437c-9f79-d7b1a7153ec0',
                      'Политика конфиденциальности');
                },
                child: const Text(
                  'Политика конфиденциальности',
                  style: defaultBlackTextStyle,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () async {
                  html.window.open(
                      'https://firebasestorage.googleapis.com/v0/b/ghostvpn-ea207.appspot.com/o/documents%2F%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%BE%D0%B5_%D1%81%D0%BE%D0%B3%D0%BB%D0%B0%D1%88%D0%B5%D0%BD%D0%B8%D0%B5.pdf?alt=media&token=4fe1ba64-29a6-4955-802f-a0713cc048af',
                      'Пользовательское соглашение');
                },
                child: const Text(
                  'Пользовательское соглашение',
                  style: defaultBlackTextStyle,
                )),
          ),
        ],
      ),
    );
  }
}
