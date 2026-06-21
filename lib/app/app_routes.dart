import 'package:flutter/material.dart';
import 'package:flutter_firebase/Features/Auth/Presentation/Screens/splash_screen.dart';

class AppRoutes {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings,)
  {
    Widget widget = SizedBox();

    switch (settings.name) {

      case'/':
        widget = const SplashScreen();
        break;
    }


    return MaterialPageRoute(builder: (context) => widget);
  }
}
