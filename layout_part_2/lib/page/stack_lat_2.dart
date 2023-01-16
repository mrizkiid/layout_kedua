import 'package:flutter/material.dart';

class StackLatKedua extends StatelessWidget {
  const StackLatKedua({super.key});
  final urlImage1 =
      'https://images.unsplash.com/photo-1476638305939-a09cd694566c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
  final urlImage2 =
      'https://images.unsplash.com/photo-1600319230579-4552a50a0f21?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
  final urlImage3 =
      'https://images.unsplash.com/photo-1615845981669-fd97622bbdec?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Stack(
        alignment: Alignment.center,
        // clipBehavior: Clip.antiAlias,
        children: [
          buildImage(
            urlImage: urlImage1,
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
            ).copyWith(top: 0),
          ),
          buildImage(
            urlImage: urlImage2,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ).copyWith(top: 60),
          ),
          buildImage(
            urlImage: urlImage3,
            margin: const EdgeInsets.symmetric(
              horizontal: 0,
            ).copyWith(top: 120),
          ),
        ],
      ),
    );
  }

  Widget buildImage({
    required String urlImage,
    required EdgeInsets margin,
  }) {
    return Container(
      margin: margin,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: NetworkImage(urlImage), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
