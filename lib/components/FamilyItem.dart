import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/pages/Family.dart';

class FamilyItem extends StatelessWidget {
  final String familyName;
  final AssetImage familyImage;

  const FamilyItem(this.familyName, this.familyImage);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, new MaterialPageRoute(builder: (context) => Family()));
      },
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
