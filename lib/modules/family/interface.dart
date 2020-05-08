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
  final Generation generation;

  FamilyMember(this.name, this.memberImage, this.generation);
}

enum Generation { DOYEN, CHILDREN, GRAND_CHILDREN }
