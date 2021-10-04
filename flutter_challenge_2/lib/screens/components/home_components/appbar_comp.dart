import 'package:flutter/material.dart';

class AppbarComponent {
  static getAppbar(String? title, BuildContext context) {
    return AppBar(
      title: Text(
        title!,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.grey,
      leading: Icon(
        Icons.menu,
        color: Colors.white,
        size: 20.0,
      ),
      actions: [
        Container(
          height: 17,
          width: 33,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[800],
          ),
          child: Text(
            "0",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
