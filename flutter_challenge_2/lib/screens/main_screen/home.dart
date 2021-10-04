import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/screens/components/home_components/appbar_comp.dart';
import 'package:flutter_challenge_2/screens/components/home_components/home_body.dart';
import 'package:flutter_challenge_2/screens/components/home_components/home_header.dart';

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
      backgroundColor: Colors.grey,
      appBar: AppbarComponent.getAppbar("Home", context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeHeader(size: size),
                const SizedBox(height: 15),
                HomeBody()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
