import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: [_screenIntro(), _screenIntro()],
        ),
      ),
    );
  }

  Widget _screenIntro() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(child: CircleIntroImage()),
          )
        ],
      ),
    );
  }
}

class CircleIntroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Center(
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.all(35),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.lightBlueAccent, width: 1.5)),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/makan.png',
                        ),
                        alignment: Alignment.center,
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                )),
            Positioned(left: 20, bottom: 30, child: _smallItemImage(size: 50)),
            Positioned(top: 50, left: 60, child: _smallItemImage(size: 35)),
            Positioned(bottom: 20, left: 135, child: _smallItemImage(size: 30)),
            Positioned(right: 50, bottom: 60, child: _smallItemImage(size: 40)),
          ],
        ),
      ),
    );
  }

  Widget _smallItemImage({double size}) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Image.asset('images/food.png'),
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
