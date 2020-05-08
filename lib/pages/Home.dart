import 'package:flutter/material.dart';
import 'package:my_flutter_navigation_project/pages/Family.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Family()));
        },
      ),
      body: Container(
        child: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}
