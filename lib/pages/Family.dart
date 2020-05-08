import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/components/FamilyItem.dart';

class Family extends StatelessWidget {
  final FamilyData familyData;

  Family(this.familyData);

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
    );
  }
}
