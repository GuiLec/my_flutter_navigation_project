import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/components/FamilyItem.dart';
import 'package:my_flutter_navigation_project/pages/Family.dart';

class FamilyData {
  final String name;
  final AssetImage familyImage;

  FamilyData(this.name, this.familyImage);
}

List<FamilyData> family = [
  FamilyData('Mamoune', AssetImage('lib/assets/images/mamoune.png')),
  FamilyData(
      'Grands Bonnet ("Yéyé")', AssetImage('lib/assets/images/gd_bonnet.png')),
  FamilyData('Lecallier', AssetImage('lib/assets/images/lecallier.jpeg')),
  FamilyData('Hélène', AssetImage('lib/assets/images/helene.jpg')),
  FamilyData('Réquillart', AssetImage('lib/assets/images/requillart.png')),
  FamilyData(
      'Petits Bonnet ("Riri")', AssetImage('lib/assets/images/pti_bonnet.png')),
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La famille Bonnet'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Family()));
        },
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
            itemCount: family.length,
            itemBuilder: (context, index) {
              return ListTile(
                title:
                    FamilyItem(family[index].name, family[index].familyImage),
              );
            },
          ),
        ),
      ),
    );
  }
}
