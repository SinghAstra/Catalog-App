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
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        '/': (BuildContext context) => const LogInPage(),
      },
    );
  }
}
