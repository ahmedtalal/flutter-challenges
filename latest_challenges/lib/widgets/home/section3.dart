import 'package:flutter/material.dart';
import 'package:latest_challenges/data/travel_list.dart';
import 'package:latest_challenges/widgets/general_widgets/header.dart';
import 'package:latest_challenges/widgets/general_widgets/travel_viewer.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(
          title: 'Exclusive Hotels',
          onClick: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              hotels.length,
              (int index) {
                return TravelsViewer(index: index, travels: hotels);
              },
            ),
          ),
        ),
      ],
    );
  }
}
