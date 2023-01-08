import 'package:flutter/material.dart';
import 'package:getir_yemek_sliver_app_bar/view/sliver_appbar_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverAppBarExample()
    );
  }
}

