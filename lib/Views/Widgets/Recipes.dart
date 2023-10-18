import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Theme.dart';

class Recipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        color: Color(0xffFFFFFF),
        width: 157.07,
        height: 182,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/Mask.png',
                width: 157.07, height: 110.66, fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Text(
              'SALMON AVOCADO SALAD',
              style: greenTextStyle.copyWith(fontSize: 10.72),
            ),
            Text(
              'Rating 4/5',
              style: greenTextStyle.copyWith(fontSize: 8.15),
            ),
          ],
        ),
      ),
    );
  }
}
