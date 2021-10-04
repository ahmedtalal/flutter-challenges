import 'package:flutter/material.dart';
import 'package:latest_challenges/data/travel_list.dart';
import 'package:latest_challenges/widgets/general_widgets/header.dart';
import 'package:latest_challenges/widgets/general_widgets/travel_viewer.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(
          title: 'Top Destinations',
          onClick: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              travels.length,
              (int index) {
                return TravelsViewer(index: index, travels: travels);
              },
            ),
          ),
        ),
      ],
    );
  }
}
