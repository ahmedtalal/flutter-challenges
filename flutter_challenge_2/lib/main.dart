import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/screens/main_screen/cart.dart';
import 'package:flutter_challenge_2/screens/main_screen/home.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
