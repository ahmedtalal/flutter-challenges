import 'package:flutter/material.dart';
import 'package:flutter_challenge_3/constants.dart';
import 'package:flutter_challenge_3/data/data_model.dart';

class NewsViewAdapter extends StatelessWidget {
  final DataModel model;
  const NewsViewAdapter({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.maxFinite,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green[600],
                      ),
                      child: Text(
                        model.title,
                        style: TextStyle(
                          fontFamily: appFont,
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.green[600],
                      ),
                      child: Text(
                        model.type,
                        style: TextStyle(
                          fontFamily: appFont,
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  model.description,
                  style: TextStyle(
                    fontFamily: appFont,
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  model.date,
                  style: TextStyle(
                    fontFamily: appFont,
                    fontSize: 10,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          size: 15,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(width: 5),
                        Text(
                          model.city,
                          style: TextStyle(
                            fontFamily: appFont,
                            fontSize: 11,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Row(
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 15,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(width: 5),
                        Text(
                          model.numberMessage.toString(),
                          style: TextStyle(
                            fontFamily: appFont,
                            fontSize: 11,
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
