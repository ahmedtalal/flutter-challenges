import 'package:challenge_6/constants.dart';
import 'package:flutter/material.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("assets/images/address.png"),
              height: 90,
              width: 100,
              color: addressColor,
            ),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Text(
                  "DELIVERY",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "45,amariands",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Nr: Hamer Road, London",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Ratings",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
            Text(
              "(55)",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
