import 'package:flutter/material.dart';
import 'package:ui_pet_adoption/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0xFFFD6456),
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Montserrat')),
      home: HomeScreen(),
    );
  }
}
