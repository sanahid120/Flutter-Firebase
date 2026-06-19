import 'package:flutter/material.dart';

import 'Auth/Screens/signInScreen.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: ThemeData(
        textTheme: TextTheme(


        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8))
            )
        )),

        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: Colors.grey,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 8,
            fontStyle: FontStyle.italic,
          ),
          labelStyle: TextStyle(
            color: Colors.green,
            fontSize: 16,
            overflow: TextOverflow.ellipsis,



          ),
          fillColor: Colors.white,



          errorBorder: OutlineInputBorder(

          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),

          disabledBorder: OutlineInputBorder(),

          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        colorSchemeSeed: Colors.green,
      ),
      routes: {
        SignInScreen.name: (_) =>SignInScreen(),
      },

      home: SignInScreen(),
    );
  }
}
