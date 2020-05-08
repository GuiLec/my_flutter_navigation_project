import 'package:flutter/material.dart';

class Miniature extends StatelessWidget {
  final AssetImage image;
  final bool isSmall;

  const Miniature(this.image, [this.isSmall]);

  @override
  Widget build(BuildContext context) {
    double dimension = isSmall ? 25 : 35;
    return Container(
      width: dimension,
      height: dimension,
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
