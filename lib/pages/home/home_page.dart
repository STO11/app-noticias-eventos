import 'package:flutter/material.dart';
import 'package:noticiaseventos/components/drawer_component.dart';
import 'package:noticiaseventos/components/header_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context),
      drawer: DrawerComponent(),
      body: Column(
        children: [

        ],
      )
    );
  }
}