import 'package:challenge_4/constant.dart';
import 'package:challenge_4/data/data_model.dart';
import 'package:flutter/material.dart';

class ListViewAdapter extends StatelessWidget {
  final DataModel model;
  const ListViewAdapter({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              image: AssetImage("assets/iamges/Screenshot.png"),
              height: 60,
              width: 90,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 14,
                    color: titlerColor,
                    fontFamily: appFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: containerColor,
                      size: 17,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      model.address,
                      style: TextStyle(
                        fontSize: 13,
                        color: addressColor,
                        fontFamily: appFont,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.school,
                      color: containerColor,
                      size: 17,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      model.type,
                      style: TextStyle(
                        fontSize: 13,
                        color: addressColor,
                        fontFamily: appFont,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
