import 'package:challenge_6/constants.dart';
import 'package:challenge_6/screens/components/button_container.dart';
import 'package:challenge_6/screens/components/container_section.dart';
import 'package:challenge_6/screens/components/header.dart';
import 'package:challenge_6/screens/components/image_Section.dart';
import 'package:challenge_6/screens/components/info_Section.dart';
import 'package:challenge_6/screens/components/rating_section.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Header(),
              const SizedBox(height: 20),
              InfoSection(),
              const SizedBox(height: 20),
              ImageSection(),
              const SizedBox(height: 20),
              ContainerSection(),
              const SizedBox(height: 20),
              RatingSection(),
              const SizedBox(height: 20),
              ButtonContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
