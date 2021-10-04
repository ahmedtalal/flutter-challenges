import 'package:flutter/material.dart';
import 'package:latest_challenges/data/travel_list.dart';
import 'package:latest_challenges/widgets/home/types_viewer.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What would you like to find ?",
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              iconsList.length,
              (int index) {
                return TypesViewer(index: index, icons: iconsList[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}
