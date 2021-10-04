import 'package:challenge_4/data/data_model.dart';
import 'package:challenge_4/screens/components/list_view_adapter.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListViewAdapter(model: list[index]);
          },
        ),
      ),
    );
  }
}
