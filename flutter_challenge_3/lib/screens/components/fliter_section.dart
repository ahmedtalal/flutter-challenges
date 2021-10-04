import 'package:flutter/material.dart';
import 'package:flutter_challenge_3/constants.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 45,
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.leaderboard,
                    size: 17,
                    color: Colors.blue[400],
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Sort",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: appFont,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 13),
              Row(
                children: [
                  Icon(
                    Icons.settings_input_component,
                    size: 17,
                    color: Colors.blue[400],
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Refine",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: appFont,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.crop_din,
                size: 19,
                color: Colors.black26,
              ),
              const SizedBox(width: 12),
              Icon(
                Icons.format_list_bulleted,
                size: 19,
                color: Colors.blue[400],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
