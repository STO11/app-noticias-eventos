import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticiaseventos/routes/routes.dart';
import 'package:noticiaseventos/themes/themes.dart';

class DrawerComponent extends StatefulWidget {
  DrawerComponent({Key key}) : super(key: key);

  @override
  _DrawerComponentState createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  TextStyle textStyle = DrawerStyle().getTextStyle();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 36,
                  color: Colors.amber,
                ),
                title: Text('Home', style: textStyle),
                //subtitle: Text('Ir para home'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.back();
                  Get.toNamed(Routes.HOME);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.people,
                  size: 36,
                  color: Colors.amber,
                ),
                title: Text('Login', style: textStyle),
                //subtitle: Text('Ir para home'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  //print('teste');
                  Get.back();
                  Get.toNamed(Routes.LOGIN);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.person_add,
                  size: 36,
                  color: Colors.amber,
                ),
                title: Text('Events', style: textStyle),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.back();
                  //Get.toNamed('/cadastrar');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 36,
                  color: Colors.amber,
                ),
                title: Text('Sair', style: textStyle),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.back();
                  Get.toNamed(Routes.LOGOUT);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
