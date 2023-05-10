import 'package:flutter/material.dart';
import 'package:ghost_vpn_site/presentation/screens/landing_screens/landing_screen.dart';
import 'package:ghost_vpn_site/presentation/screens/doc_screens/policy_screen.dart';
import 'package:ghost_vpn_site/presentation/screens/doc_screens/terms_screen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GhostVPN',
      initialRoute: LandingScreen.route,
      routes: {
        LandingScreen.route: (context) => const LandingScreen(),
        PolicyScreen.route :(context) => const PolicyScreen(),
        TermsScreen.route:(context) => const TermsScreen()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const LandingScreen(),
    );
  }
}
