import 'package:flutter/material.dart';
import 'package:aspen_project/screens/splash_screen.dart'; // Mengimpor file HomeScreen

void main() => runApp(AspenTravelApp());

class AspenTravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DriftWay Travel App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Memanggil HomeScreen yang ada di file terpisah
    );
  }
}
