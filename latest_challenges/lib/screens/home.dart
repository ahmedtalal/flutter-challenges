import 'package:flutter/material.dart';
import 'package:latest_challenges/widgets/home/section1.dart';
import 'package:latest_challenges/widgets/home/section2.dart';
import 'package:latest_challenges/widgets/home/section3.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.06),
              Section1(),
              const SizedBox(height: 20),
              Section2(),
              const SizedBox(height: 30),
              Section3(),
            ],
          ),
        ),
      ),
    );
  }
}
