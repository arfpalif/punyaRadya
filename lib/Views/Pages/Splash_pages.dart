import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Theme.dart';
import 'package:flutter_application_1/Views/Pages/Dashboard_pages.dart';
import 'package:flutter_application_1/Views/Widgets/Button.dart';


class Splashpages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image(image: AssetImage('assets/rafiki.png')),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 30,
                  width: 83,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Fastfood.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'FODDIES PARADISE',
                    style: greenTextStyle.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                      'Kreasikan dirimu dengan resep terbaru dari FOODIE’S PARADISE',
                      style: pinkTextStyle.copyWith(
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(left: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Dashboard();
                      }));
                    },
                    style: buttonPrimary,
                    child: Text('GET STARTED',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        )),
                  ),
                ),
              ],
              
            ),
          ),
        ],
      ),
    ));
  }
}
