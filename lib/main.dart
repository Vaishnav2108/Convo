import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'auth.dart';

void main() {
  runApp(const Convo());
}

class Convo extends StatelessWidget {
  const Convo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
