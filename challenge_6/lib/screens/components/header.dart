import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios,
          size: 18,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite_border_outlined,
          size: 18,
          color: Colors.white,
        ),
      ],
    );
  }
}
