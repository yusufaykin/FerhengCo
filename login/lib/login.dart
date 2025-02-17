import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.25, -0.97),
                end: Alignment(-0.25, 0.97),
                colors: [Color(0xFFF1F1F1), Color(0xFCC3C3C3)],
              ),
            ),
          ),
          Positioned(
            top: 101.0,
            left: 94.0,
            right: 94.0,
            bottom: 659.0,
            child: Image.asset(
              'images/logo.png',
              width: 226,
              height: 136,
            ),
          ),
          Positioned(
            top: 307.0,
            left: 131.0,
            right: 132.0,
            bottom: 567.0,
            child: Text(
              'Kaydol / Oturum Aç',
              style: TextStyle(
                color: Color(0xFF828282),
                fontSize: 18,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 250), // Oturum Aç/Kaydol ile E-posta arasına 53px boşluk
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSvgContainer('mail.svg', 31.87, 22.76),
                    SizedBox(width: 80), // E-posta ile ve Apple ile arasına 90px boşluk
                    buildAuthOption('E-posta ile Devam Et', () {
                      // E-posta ile devam et butonuna basıldığında yapılacak işlemler
                    }),
                  ],
                ),
                SizedBox(height: 75), // Apple ile ve Facebook ile arasına 90px boşluk
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSvgContainer('apple.svg', 32, 32),
                    SizedBox(width: 105),
                    buildAuthOption('Apple ile Devam Et', () {
                      // Apple ile devam et butonuna basıldığında yapılacak işlemler
                    }),
                  ],
                ),
                SizedBox(height: 75,), // Facebook ile ve Google ile arasına 90px boşluk
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSvgContainer('facebook.svg', 32, 32),
                    SizedBox(width: 75),
                    buildAuthOption('Facebook ile Devam Et',  () {

                      // Facebook ile devam et butonuna basıldığında yapılacak işlemler
                    }),
                    
                  ],
                ),
                SizedBox(height: 75), // Google ile ve diğer içerik arasına 90px boşluk
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    buildSvgContainer('google.svg', 32, 32),
                    SizedBox(width: 85),
                    buildAuthOption('Google ile Devam Et', () {
                      // Google ile devam et butonuna basıldığında yapılacak işlemler
                    }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAuthOption(String text, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 19,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
    );
  }

  Widget buildSvgContainer(String svgPath, double width, double height) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          SvgPicture.asset(
            'images/$svgPath',
            width: width,
            height: height,
          ),
        ],
      ),
    );
  }
}
