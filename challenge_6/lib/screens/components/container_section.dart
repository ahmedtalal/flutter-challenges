import 'package:challenge_6/constants.dart';
import 'package:flutter/material.dart';

class ContainerSection extends StatelessWidget {
  const ContainerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      width: double.maxFinite,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: containertColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/eggs.png"),
                height: 50,
                color: borderColor,
              ),
              const SizedBox(height: 8),
              Text(
                "4 Eggs",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 0.3,
            color: Colors.grey[300],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/vanilla.png"),
                height: 50,
                color: borderColor,
              ),
              const SizedBox(height: 8),
              Text(
                "2 stp vanilla",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 0.3,
            color: Colors.grey[300],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/coffee.png"),
                height: 50,
                color: borderColor,
              ),
              const SizedBox(height: 8),
              Text(
                "1 cup sugar",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
