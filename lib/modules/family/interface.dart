import 'package:flutter/material.dart';

class FamilyData {
  final String name;
  final AssetImage familyImage;
  final List<FamilyMember> familyMembers;

  FamilyData(this.name, this.familyImage, this.familyMembers);
}

class FamilyMember {
  final String name;
  final AssetImage memberImage;

  FamilyMember(this.name, this.memberImage);
}
