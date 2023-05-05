import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';

class DescriptionWidget extends StatelessWidget {
  final TextStyle textStyle;
  const DescriptionWidget({super.key, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Center(
        child: Text(
          descriptionText,
          textAlign: TextAlign.center,
          style: textStyle,
        ),
      ),
    );
  }
}
