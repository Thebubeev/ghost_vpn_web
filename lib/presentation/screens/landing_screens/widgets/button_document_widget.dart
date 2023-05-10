import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/presentation/screens/doc_screens/policy_screen.dart';
import 'package:ghost_vpn_site/presentation/screens/doc_screens/terms_screen.dart';

class ButtonDocumentWidget extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final bool isTerms;
  const ButtonDocumentWidget({
    super.key,
    required this.title,
    required this.isTerms,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, isTerms ?TermsScreen.route :  PolicyScreen.route,);
          },
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: textStyle,
          )),
    );
  }
}
