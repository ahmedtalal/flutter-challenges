import 'package:flutter/material.dart';
import 'package:flutter_challenge_2/data/cart_data.dart';

class CartViewAdapter extends StatelessWidget {
  final ProductModel? model;
  const CartViewAdapter({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119,
      margin: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(model!.image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            flex: 8,
            child: Container(
              height: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        model!.name,
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 17.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Price:  ${model!.price} LE",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "Sub Total: ",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        model!.subTotal.toString() + " LE",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.amber,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ships Free",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.amber,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.remove,
                              color: Colors.red,
                              size: 19.0,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.3,
                              ),
                            ),
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.teal,
                              size: 19.0,
                            ),
                          ),
                          const SizedBox(width: 7),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
