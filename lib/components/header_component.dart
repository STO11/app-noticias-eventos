import 'package:flutter/material.dart';
import 'package:noticiaseventos/themes/themes.dart';

AppBar getAppBar(context) {
  return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text('Concursos')
    );
}
    