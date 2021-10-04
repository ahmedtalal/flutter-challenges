import 'package:flutter/material.dart';
import 'package:latest_challenges/screens/travel_details.dart';

class DetailsSection1 extends StatelessWidget {
  const DetailsSection1({
    Key? key,
    required this.size,
    required this.widget,
  }) : super(key: key);

  final Size size;
  final TravelDetails widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.35,
      width: double.maxFinite,
      padding: const EdgeInsets.only(
        top: 35,
        left: 12,
        right: 12,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 12.0,
          ),
        ],
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(widget.model.image),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 25,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 25,
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.align_vertical_top,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    widget.model.title2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.grey[200],
                        size: 18,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        widget.model.city,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Icon(
                Icons.place,
                color: Colors.grey[200],
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
