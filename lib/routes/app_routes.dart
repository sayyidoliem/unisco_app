import 'package:unisco_app/pages/login/login_page.dart';
import 'package:unisco_app/pages/main_page.dart';

class AppRoute {
  static const String mainPage = "/";
  static const String loginPage = "/login";

  static final routes = {
    mainPage: (context) => const MainPage(),
    loginPage: (context) => const LoginPage(),
  };
}
