import 'package:flutter/material.dart';

class FamilyItem extends StatelessWidget {
  final String familyName;

  const FamilyItem(this.familyName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Family'),
    );
  }
}
