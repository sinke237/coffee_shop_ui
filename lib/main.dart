import 'package:coffee_shop_ui/screens/coffeeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee UI',
      theme: ThemeData(
        primaryColor: const Color(0xff100702),
        primarySwatch: Colors.brown,
      ),
      home: Coffee(),
    );
  }
}
