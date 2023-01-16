import 'package:flutter/material.dart';

class BreadCrumsLat extends StatelessWidget {
  const BreadCrumsLat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildBulat(
          icon: Icons.cake,
        ),
        buildBulat(
          icon: Icons.local_drink,
        ),
        buildBulat(
          icon: Icons.icecream,
        ),
        buildBulat(
          icon: Icons.no_meals,
        ),
      ],
    );
  }

  Widget buildBulat({required IconData icon}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
      child: Icon(icon, color: Colors.white),
    );
  }
}
