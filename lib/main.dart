import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:noticiaseventos/routes/add_pages.dart';
import 'package:noticiaseventos/themes/themes.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      //darkTheme: Themes.dark, 
      themeMode: ThemeService().theme, // add this
      getPages: AppPages.routes,
    );
  }
}