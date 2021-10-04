import 'package:challenge_6/constants.dart';
import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    Key? key,
  }) : super(key: key);
  static const List<String> data = [
    "1 kg",
    "2 kg",
    "3 kg",
    "4 kg",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Fruits Cake",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "strawberry & kiwi special",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(data.length, (index) {
            return Container(
              height: 30,
              width: 65,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: index == 0 ? textColor : appColor,
                border: Border.all(
                  color: textColor,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                data[index],
                style: TextStyle(
                  color: index == 0 ? Colors.white : textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
