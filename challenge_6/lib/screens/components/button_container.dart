import 'package:challenge_6/constants.dart';
import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: textColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        "Make Order Now",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
