import 'package:flutter/material.dart';
import 'about_just.dart'; // import the About JUST page
import 'Support_screen.dart';
import 'Abwaan.dart';
import 'Settingspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelpSupportPage(),
    );
  }
}
