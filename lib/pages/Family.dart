import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/components/Miniature.dart';
import 'package:my_flutter_navigation_project/modules/family/interface.dart';
import 'package:my_flutter_navigation_project/pages/FamilyMemberPage.dart';

class Family extends StatelessWidget {
  final FamilyData familyData;

  Family(this.familyData);

  @override
  Widget build(BuildContext context) {
    var familyMembers = familyData.familyMembers;
    return Scaffold(
      appBar: AppBar(
        title: Text(familyData.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            constraints: new BoxConstraints(
              maxHeight: 200,
            ),
            child: Image(
              image: familyData.familyImage,
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: familyMembers.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) =>
                            FamilyMemberPage(familyMembers[index]),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Miniature(familyMembers[index].memberImage, false),
                        Text(familyMembers[index].name),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
