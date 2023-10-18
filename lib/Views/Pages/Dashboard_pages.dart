import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Models/Theme.dart';
import 'package:flutter_application_1/Views/Pages/profile_pages.dart';
import 'package:flutter_application_1/Views/Widgets/Recipes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        gap: 10,
        activeColor: pinkColor,
        color: greenColor,
        padding: EdgeInsets.only(
          bottom: 20
        ),
        tabMargin: EdgeInsets.only(left: 24, right: 24),
        tabs: [
        GButton(icon: Icons.home,
        text: 'Home',),
        GButton(icon: Icons.chat_bubble,
        text: 'Chat',),
        GButton(icon: Icons.ad_units,
        text: 'Iklan saya',),
        GButton(icon: Icons.people_alt,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Profile();
                    }));
        },
        text: 'Profile',),
        
      ]),
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 24),
      child: ListView(children: [
        Text(
          'FOODIES PARADISE',
          style: greenTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
          left: 24,
        )),
        Text(
          'Cari Resep Kesukaanmu',
          style: greenTextStyle.copyWith(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          style: searchBarText,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF89494),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              hintText: "Cari Resep Kesukaanmu",
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Color(0xffFFFFFF)),
        ),
        SizedBox(
          height: 20,
        ),
        Image(image: AssetImage('assets/Hero.jpg')),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Category',
          style: pinkTextStyle.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 180,
          child: Row(
            children: [
              Recipes(),
              SizedBox(
                width: 28.5,
              ),
              Recipes()
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Rekomendasi Untukmu',
          style: pinkTextStyle.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 180,
          child: Row(
            children: [
              Recipes(),
              SizedBox(
                width: 28.5,
              ),
              Recipes()
            ],
          ),
        ),
        
      ]),
    )));
  }
}
