// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:layout_part_2/page/stack_lat.dart';
import 'package:layout_part_2/page/stack_lat_2.dart';
import 'package:layout_part_2/page/tampilan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Kedua'),
        ),
        body: StackLatKedua(),
      ),
    );
  }
}
