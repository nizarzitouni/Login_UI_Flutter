import 'package:flutter/material.dart';
import 'package:flutter_responsice_login_ui/pallete.dart';

import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ResponsiveLoginApp());
}

class ResponsiveLoginApp extends StatelessWidget {
  ResponsiveLoginApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Pallete.backgroundColor),
      home: LoginScreen(),
    );
  }
}
