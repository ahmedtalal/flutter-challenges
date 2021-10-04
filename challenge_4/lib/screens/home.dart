import 'package:challenge_4/screens/components/body_section.dart';
import 'package:challenge_4/screens/components/header_Section.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          HeaderSection(size: size),
          BodySection(),
        ],
      ),
    );
  }
}
