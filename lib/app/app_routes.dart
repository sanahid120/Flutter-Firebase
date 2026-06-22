import 'package:flutter/material.dart';
import 'package:flutter_firebase/Features/Auth/Presentation/Screens/homepage.dart';
import 'package:flutter_firebase/Features/Auth/Presentation/Screens/splash_screen.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings,)
  {
    Widget widget = SizedBox();

    switch (settings.name) {

      case SplashScreen.name:
        widget = const SplashScreen();
        break;
      case Homepage.name:
        widget = const Homepage();
        break;
    }


    return MaterialPageRoute(builder: (context) => widget);
  }
}
