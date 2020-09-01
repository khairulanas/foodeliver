import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:foodeliver/ui/util/screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'images/signin.png',
              fit: BoxFit.fitHeight,
              height: Screen.heigth(context),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: [
                    Colors.white70,
                    Colors.black54,
                  ])),
            ),
            Positioned(
              top: 100,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Wellcome to',
                        style: GoogleFonts.montserrat(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'FoodHub',
                        style: GoogleFonts.montserrat(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your favourite foods delivered\n'
                        'fast of your door',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 50,
                child: Container(
                  width: Screen.width(context),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '------------------------------------------',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -2),
                          ),
                          Expanded(
                              child: Text(
                            'Sign Up With',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          Text(
                            '------------------------------------------',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -2),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _socialLoginButton(
                                icon: FlutterIcons.facebook_faw,
                                text: 'FACEBOOK'),
                            SizedBox(
                              width: 10,
                            ),
                            _socialLoginButton(
                                icon: FlutterIcons.google_ant,
                                text: 'GOOGLE',
                                color: Colors.red)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(12),
                          child: Text(
                            'Start With Email or Phone',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.withAlpha(150)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already Have Account ?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  decoration: TextDecoration.underline),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _socialLoginButton(
      {IconData icon, String text, Color color = Colors.blue}) {
    return Expanded(
      child: ClipRRect(
        child: Container(
          padding: EdgeInsets.all(4),
          color: Colors.white,
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(icon),
                backgroundColor: color,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
