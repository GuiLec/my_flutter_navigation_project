import 'package:flutter/material.dart';

class FamilyItem extends StatelessWidget {
  final String familyName;
  final AssetImage familyImage;

  const FamilyItem(this.familyName, this.familyImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Image(
            height: 100,
            width: 150,
            image: familyImage,
          ),
          Text(familyName),
        ],
      ),
    );
  }
}
