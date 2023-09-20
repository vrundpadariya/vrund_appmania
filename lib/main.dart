import 'package:appmaina/screens/cartpage.dart';
import 'package:appmaina/screens/detailpage.dart';
import 'package:appmaina/screens/favpage.dart';
import 'package:appmaina/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyApp(),
        'details': (context) => const detail(),
        'cart': (context) => const cart(),
        'fav': (contex) => const fav(),
      },
    ),
  );
}
