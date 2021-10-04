import 'package:flutter/material.dart';
import 'package:latest_challenges/data/travel_list.dart';
import 'package:latest_challenges/widgets/show_details/time_container_viewer.dart';

class DetailsViewer extends StatelessWidget {
  const DetailsViewer({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: double.maxFinite,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(relatedItmes[index].image),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        relatedItmes[index].name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.black,
                              size: 20,
                            ),
                            Text(
                              relatedItmes[index].salary.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "per pax",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  relatedItmes[index].description,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: List.generate(
                    relatedItmes[index].rating.toInt(),
                    (index) {
                      return Icon(
                        Icons.star_outlined,
                        size: 26,
                        color: Colors.yellow,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    TimeContainer(
                      time: relatedItmes[index].startTime.toString(),
                      isTyped: true,
                    ),
                    const SizedBox(width: 12),
                    TimeContainer(
                      time: relatedItmes[index].endTime.toString(),
                      isTyped: false,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
