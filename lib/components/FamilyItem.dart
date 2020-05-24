import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/components/Miniature.dart';
import 'package:my_flutter_navigation_project/modules/family/interface.dart';
import 'package:my_flutter_navigation_project/pages/Family.dart';
import 'package:my_flutter_navigation_project/pages/FamilyMemberPage.dart';

class FamilyItem extends StatelessWidget {
  final FamilyData familyData;

  const FamilyItem(this.familyData);

  @override
  Widget build(BuildContext context) {
    double familyItemBorderRadius = 10;
    return InkWell(
      onTap: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => Family(familyData)));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(familyItemBorderRadius),
            color: Colors.blue[50],
            border: Border.all(width: 1.0, color: Colors.blue)),
        child: Row(
          children: <Widget>[
            Container(
              height: 100,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(familyItemBorderRadius),
                  bottomLeft: Radius.circular(familyItemBorderRadius),
                ),
                image: DecorationImage(
                  image: familyData.familyImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      familyData.name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900]),
                    ),
                  ),
                  Row(
                    children: familyData.familyMembers
                        .map(
                          (member) => Miniature(
                            member.memberImage,
                            isSmall:
                                member.generation == Generation.GRAND_CHILDREN,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>
                                          FamilyMemberPage(member)));
                            },
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
