import 'package:flutter/material.dart';

class Miniature extends StatelessWidget {
  final AssetImage image;

  const Miniature(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: image,
        ),
      ),
    );
  }
}
