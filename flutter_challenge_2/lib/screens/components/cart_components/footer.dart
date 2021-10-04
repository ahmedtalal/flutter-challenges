import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Checkout Price: ",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Rs:5000 ",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, 40),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
