import 'package:fithnitek/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFE4ECEB),
        primaryColor: Color(0XFFF4F4F4),
        //accentColor: Color.fromARGB(255, 40, 105, 96),
        iconTheme: const IconThemeData(color: Color(0XFF565656)),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}