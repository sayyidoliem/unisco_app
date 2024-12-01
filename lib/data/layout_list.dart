import 'package:flutter/material.dart';
import 'package:unisco_app/pages/about_unisco/about_unisco_page.dart';
import 'package:unisco_app/pages/home/home_page.dart';
import 'package:unisco_app/pages/osis_page/unisco_root_page.dart';
import 'package:unisco_app/pages/profile/profile_page.dart';

class Layouts {
  static const List<Widget> guestLayout = [
    HomePage(),
    AboutPage(),
    ProfilePage()
  ];

  static const List<Widget> uniscoLayout = [
    HomePage(),
    UniscoPage(),
    AboutPage(),
    ProfilePage()
  ];
}
