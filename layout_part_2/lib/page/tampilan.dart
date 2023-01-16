// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:layout_part_2/widget/build%20_icon_breadcrumbs.dart';
import 'package:layout_part_2/widget/build_burger.dart';
import 'package:layout_part_2/widget/burger_row.dart';

class Tampilan extends StatelessWidget {
  const Tampilan({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        BreadCrumsLat(),
        SizedBox(
          height: 7,
        ),
        BuildBurger(),
        SizedBox(
          height: 20,
        ),
        BurgerRow(),
      ],
    );
  }
}
