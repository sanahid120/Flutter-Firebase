import 'package:flutter/material.dart';

import 'app/app.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


// Project Structure
// Theming setup
//Firebase setup
// Crashlytics and Analytics
// Localization
// Routing


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}



