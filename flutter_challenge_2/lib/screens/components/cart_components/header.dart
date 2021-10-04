import 'package:flutter/material.dart';

class Header {
  static appbarWidget(String title, BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      backgroundColor: Colors.red,
      elevation: 0,
    );
  }
}
