import 'package:flutter/material.dart';
import 'package:flutter_challenge_3/data/data_model.dart';
import 'package:flutter_challenge_3/screens/components/news_view_Adapter.dart';
class BodySection extends StatelessWidget {
  const BodySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return NewsViewAdapter(model: dataList[index]);
          },
        ),
      ),
    );
  }
}
