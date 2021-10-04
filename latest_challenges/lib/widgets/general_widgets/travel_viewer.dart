import 'package:flutter/material.dart';
import 'package:latest_challenges/models/travel-model.dart';
import 'package:latest_challenges/screens/travel_details.dart';

class TravelsViewer extends StatelessWidget {
  const TravelsViewer({
    Key? key,
    required this.index,
    required this.travels,
  }) : super(key: key);
  final int index;
  final List<TravelModel> travels;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => TravelDetails(
            model: travels[index],
          ),
        ),
      ),
      child: Container(
        width: 150,
        height: 180,
        margin: const EdgeInsets.only(
          right: 8,
          top: 8,
          bottom: 8,
          left: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 95,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    travels[index].image,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    travels[index].title2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.near_me,
                        color: Colors.white,
                        size: 14,
                      ),
                      Text(
                        travels[index].city,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              travels[index].title1,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              travels[index].description,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
