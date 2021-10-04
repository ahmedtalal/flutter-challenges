import 'package:flutter/material.dart';
import 'package:flutter_challenge_3/screens/components/appbar_section.dart';
import 'package:flutter_challenge_3/screens/components/body_section.dart';
import 'package:flutter_challenge_3/screens/components/fliter_section.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSection.getAppBar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterSection(),
          const SizedBox(height: 10),
          BodySection(),
        ],
      ),
    );
  }
}
