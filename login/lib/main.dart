import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // login.dart dosyasındaki widget'ı burada kullanıyoruz
      // Diğer MaterialApp ayarları buraya eklenebilir
    );
  }
}
