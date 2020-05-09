import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/modules/family/interface.dart';

class FamilyMemberPage extends StatelessWidget {
  final FamilyMember familyMember;

  FamilyMemberPage(this.familyMember);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(familyMember.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            constraints: new BoxConstraints(
              maxHeight: 200,
            ),
            child: Image(
              image: familyMember.memberImage,
            ),
          ),
        ],
      ),
    );
  }
}
