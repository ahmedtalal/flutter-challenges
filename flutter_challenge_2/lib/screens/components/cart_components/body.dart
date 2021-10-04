import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/data/cart_data.dart';
import 'package:flutter_challenge_2/screens/components/cart_components/cart_view_adapter.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 11,
      child: ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          return CartViewAdapter(model: cartList[index]);
        },
      ),
    );
  }
}
