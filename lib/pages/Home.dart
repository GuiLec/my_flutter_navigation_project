import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/pages/Family.dart';

List<String> family = [
  'Grands Bonnet ("Yéyé")',
  'Lecallier',
  'Réquillart',
  'Petits Bonnet ("Riri")'
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
                title: Text(family[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
