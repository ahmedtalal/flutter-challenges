import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/screens/components/cart_components/body.dart';
import 'package:flutter_challenge_2/screens/components/cart_components/footer.dart';
import 'package:flutter_challenge_2/screens/components/cart_components/header.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: Header.appbarWidget("Cart", context),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Body(),
            const SizedBox(height: 15.0),
            Footer(),
          ],
        ),
      ),
    );
  }
}
