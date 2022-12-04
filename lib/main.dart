import 'package:doc_app/constants/global_variables.dart';
import 'package:doc_app/features/auth/services/auth_screen.dart';
import 'package:doc_app/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doc App',
      theme: ThemeData(
        // background color of the login page
        backgroundColor: Colors.white,
        // background color of the Login button
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
