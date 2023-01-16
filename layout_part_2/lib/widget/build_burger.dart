// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:layout_part_2/const_file.dart' as dataConst;

class BuildBurger extends StatelessWidget {
  const BuildBurger({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: buildBurgers()),
        SizedBox(
          width: 10,
        ),
        Expanded(child: buildBurgers()),
      ],
    );
  }

  Widget buildBurgers() {
    return Align(
      // alignment: Alignment.center,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              dataConst.url,
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            Text(
              'Beef Burger',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Onion With Cheese',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '\$200,00',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
