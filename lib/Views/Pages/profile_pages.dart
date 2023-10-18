import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/Image.dart';
import 'package:flutter_application_1/Views/Pages/Splash_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Profile extends StatelessWidget {

  imagePickerController controller = Get.put(imagePickerController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Splashpages();
                    }));
        }, icon: const Icon(Icons.arrow_back), color: Colors.pink,),
        title: Text('Profile'),
        
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications, color: Color(0xffff9900),),
          )
        ],
      ),
      
      body: Obx((){
        return Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                SizedBox(height: 20,),
            Center(
              child: 
              CircleAvatar(
                radius: 100,
                backgroundImage: controller.imagePath.isNotEmpty ?
                FileImage(File(controller.imagePath.toString())) : 
                  null
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                TextButton(onPressed: (){
              controller.getImage();
            }, child: Text('Pilih foto')),
            TextButton(onPressed: (){
              controller.getImage();
            }, child: Text('Ambil foto')),
              ],
            ),
            
            ]
          ),
        );
      })
    );
  }
}