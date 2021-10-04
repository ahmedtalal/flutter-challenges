import 'package:flutter/material.dart';
import 'package:latest_challenges/data/travel_list.dart';
import 'package:latest_challenges/widgets/show_details/details_Viewer.dart';

class DetailsSection2 extends StatelessWidget {
  const DetailsSection2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: List.generate(
          relatedItmes.length,
          (index) {
            return DetailsViewer(index: index);
          },
        ),
      ),
    );
  }
}
