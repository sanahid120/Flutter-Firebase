import 'package:flutter/material.dart';
import 'package:flutter_firebase/app/app_routes.dart';
import 'package:flutter_firebase/app/app_theme.dart';

import '../Features/Auth/Presentation/Screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: '/',
      onGenerateRoute: AppRoutes.onGenerateRoute,

      home: SplashScreen(),
    );
  }
}
