import 'package:flutter/material.dart';
import 'package:safetyapp/qrscreen/qrscreen.dart';
import 'package:safetyapp/addemergencycontacts/addcontacts.dart';
import 'package:safetyapp/emegencycontacts/home_emergencycontacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_EmergencyContacts(),
    );
  }
}
