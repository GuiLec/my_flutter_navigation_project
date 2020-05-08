import 'package:flutter/material.dart';

class FamilyItem extends StatelessWidget {
  final String familyName;

  const FamilyItem(this.familyName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Image(
            height: 100,
            image: AssetImage('lib/assets/images/lecallier.jpeg'),
          ),
          Text(familyName),
        ],
      ),
    );
  }
}
