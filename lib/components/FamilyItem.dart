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
    return InkWell(
      onTap: () {
        Navigator.push(context,
            new MaterialPageRoute(builder: (context) => Family(familyData)));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.cyan[200],
        ),
        child: Row(
          children: <Widget>[
            Container(
              child: Image(
                fit: BoxFit.fill,
                height: 100,
                width: 130,
                image: familyData.familyImage,
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
