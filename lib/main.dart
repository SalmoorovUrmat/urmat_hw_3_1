import 'package:flutter/material.dart';
import 'package:flutter_application_33/home/home_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {


const MyApp ({super.key});

Widget build (BuildContext context) {
  return MaterialApp(
    title: 'Мои задачи',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 243, 243, 243)),
    ),
    home: MyHomePage(title: 'Мои задачи'),
  );

}
}
