import 'package:flutter/material.dart';
import 'package:noticiaseventos/components/drawer_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Concursos'),
      ),
      drawer: DrawerCompoenent(),
      body: Column(
        children: [

        ],
      )
    );
  }
}