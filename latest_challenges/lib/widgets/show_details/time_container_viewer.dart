import 'package:flutter/material.dart';
import 'package:latest_challenges/constants.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    Key? key,
    required this.time,
    required this.isTyped,
  }) : super(key: key);
  final String time;
  final bool isTyped;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        time + "${isTyped == false ? " pm" : " am"}",
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
