import 'package:flutter/material.dart';
import 'package:flutter_challenge_3/constants.dart';

class AppBarSection {
  static getAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Latest News",
        style: TextStyle(
          fontFamily: appFont,
          fontSize: 17,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back_ios,
        size: 17,
        color: Colors.black,
      ),
      actions: [
        Icon(
          Icons.search,
          size: 20,
          color: Colors.black,
        ),
        const SizedBox(width: 18),
      ],
    );
  }
}
