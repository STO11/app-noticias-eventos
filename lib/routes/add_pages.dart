import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:noticiaseventos/pages/events/events_page.dart';
import 'package:noticiaseventos/pages/home/home_page.dart';
import 'package:noticiaseventos/pages/login/login_page.dart';
import 'package:noticiaseventos/pages/register/register_page.dart';
import 'package:noticiaseventos/routes/routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
    ),
    GetPage(
      name: Routes.EVENTS,
      page: () => EventPage(),
    ),
  ];
}