import 'package:flutter/material.dart';
import 'package:foodeliver/ui/intro_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(IntroPage());
              },
              child: ClipRRect(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 100,
                  color: Colors.white,
                  child: Image.asset(
                    'images/food.png',
                  ),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Text(
              'FOODHUB',
              style: GoogleFonts.modak(fontSize: 40, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
