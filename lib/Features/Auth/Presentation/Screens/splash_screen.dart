import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
static String name = 'Splash_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
      )),

    );
  }
}
