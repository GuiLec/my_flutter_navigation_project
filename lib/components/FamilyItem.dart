import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/modules/family/interface.dart';
import 'package:my_flutter_navigation_project/pages/Family.dart';

class FamilyItem extends StatelessWidget {
  final FamilyData familyData;

  const FamilyItem(this.familyData);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => Family(familyData)));
      },
      child: Row(
        children: <Widget>[
          Image(
            height: 100,
            width: 150,
            image: familyData.familyImage,
          ),
          Text(familyData.name),
        ],
      ),
    );
  }
}
