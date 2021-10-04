import 'package:flutter/material.dart';
import 'package:latest_challenges/models/travel-model.dart';
import 'package:latest_challenges/widgets/show_details/details_Section2.dart';
import 'package:latest_challenges/widgets/show_details/details_section1.dart';

class TravelDetails extends StatefulWidget {
  const TravelDetails({Key? key, required this.model}) : super(key: key);
  final TravelModel model;

  @override
  _TravelDetailsState createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsSection1(size: size, widget: widget),
              const SizedBox(height: 15),
              DetailsSection2(),
            ],
          ),
        ),
      ),
    );
  }
}
