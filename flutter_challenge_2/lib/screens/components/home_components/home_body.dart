import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/data/cart_data.dart';
import 'package:flutter_challenge_2/screens/components/home_components/gride_view_adapter.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: gridList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return GridViewAdapter(image: gridList[index]);
      },
    );
  }
}
