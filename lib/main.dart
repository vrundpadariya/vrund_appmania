import 'package:appmaina/screens/detailpage.dart';
import 'package:appmaina/screens/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const AppMania(),
        'details': (context) => const DetailPage(),

      },
    ),
  );
}
