import 'package:flutter/material.dart';
import 'package:layout_part_2/const_file.dart' as dataConst;

class BurgerRow extends StatelessWidget {
  const BurgerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(
              dataConst.url,
              height: 100,
              width: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Burger',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Onion With Cheese',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          margin: const EdgeInsets.only(right: 15),
          height: 60,
          width: 60,
          child: const Center(
            child: Text(
              '5',
              style: TextStyle(fontSize: 24),
            ),
          ),
        )
      ]),
    );
  }
}
