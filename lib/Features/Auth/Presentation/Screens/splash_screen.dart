import 'package:flutter/material.dart';
import 'package:flutter_firebase/Features/Auth/Providers/language_provider.dart';
import 'package:flutter_firebase/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
static String name = 'Splash_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,

        children: [
          Center(
            child: Column(
              children: [
                Text(AppLocalizations.of(context).hello),
                FilledButton(onPressed: (){
                  Locale locale = context.read<LanguageProvider>().currentLocale;
                  locale == Locale('en') ? context.read<LanguageProvider>().changeLocale(Locale('bn')) : context.read<LanguageProvider>().changeLocale(Locale('en'));

                }, child: Text(AppLocalizations.of(context).changeYourLanguage))

              ],
            )


          )
        ],
      )),

    );
  }
}
