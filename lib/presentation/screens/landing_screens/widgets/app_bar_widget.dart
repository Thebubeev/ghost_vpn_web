import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/config/utils/constants/constants.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final bool isLanding;
  const AppBarWidget({
    super.key,
    required this.isLanding,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: isLanding ? false : true,
        elevation: 0,
        title: const Text('GhostVPN', style: defaultWhiteWebTextStyle));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
