import 'package:challenge_4/constant.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      width: double.maxFinite,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.23,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: appColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.format_list_bulleted,
                    color: Colors.white,
                    size: 20,
                  ),
                  Text(
                    "Institutes",
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontFamily: appFont,
                    ),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 45,
                width: 360,
                margin: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 30,
                      offset: Offset(0, 0.2),
                    ),
                  ],
                ),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.grey[400],
                    ),
                    hintText: "Search School",
                    hintStyle: TextStyle(
                      height: 1,
                      fontSize: 14,
                      color: Colors.grey[400],
                      fontFamily: appFont,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
