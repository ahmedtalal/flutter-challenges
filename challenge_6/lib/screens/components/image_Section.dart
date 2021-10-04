import 'package:challenge_6/constants.dart';
import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/cake.jpeg",
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: textColor,
                    ),
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.attach_money,
                  color: Colors.white,
                  size: 22,
                ),
                Text(
                  "84.99",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
