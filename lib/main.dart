import 'package:catalog_app/pages/HomePage.dart';
import 'package:catalog_app/pages/SignUpPage.dart';
import 'package:catalog_app/pages/logInPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Catalog App",
      theme: ThemeData(primarySwatch: Colors.blue, primaryColor: Colors.amber),
      initialRoute: '/signUp',
      routes: {
        '/': (BuildContext context) => const HomePage(),
        '/signUp': (BuildContext context) => const SignUpPage(),
        '/logIn': (BuildContext context) => const LogInPage(),
      },
    );
  }
}
