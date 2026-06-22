import 'package:flutter/material.dart';
import 'package:flutter_firebase/Features/Auth/Providers/language_provider.dart';
import 'package:flutter_firebase/Features/Auth/Providers/theme_provider.dart';
import 'package:flutter_firebase/app/app_routes.dart';
import 'package:flutter_firebase/app/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../Features/Auth/Presentation/Screens/splash_screen.dart';
import '../l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (context)=> LanguageProvider()),
        ChangeNotifierProvider(create: (context)=> ThemeProvider()),
      ],
      child: Consumer2<LanguageProvider,ThemeProvider>(
        builder: ( context, languageProvider, themeProvider , child) {
          return MaterialApp(

            title: 'Flutter Firebase',
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],

            locale: languageProvider.currentLocale,
            supportedLocales: languageProvider.supportedLocales,

            theme: themeProvider.currentTheme,


            initialRoute: '/',
            onGenerateRoute: AppRoutes.onGenerateRoute,

            home: SplashScreen(),
          );

        }
      ),
    );
  }
}
