import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/components/FamilyItem.dart';
import 'package:my_flutter_navigation_project/modules/family/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La famille Bonnet'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Container(
        child: Center(
          child: ListView.builder(
            itemCount: family.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: FamilyItem(family[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
