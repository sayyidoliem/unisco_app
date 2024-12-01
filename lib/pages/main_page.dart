import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unisco_app/data/layout_list.dart';
import 'package:unisco_app/notifiers/position_notifier.dart';
import 'package:unisco_app/widget/bottom_nav_bar.dart';
import 'package:unisco_app/widget/top_app_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isUNISCO = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<PositionNotifier>(
      builder: (context, positionNotifier, _) => Scaffold(
        appBar: getUniscoAppBar(),
        body: isUNISCO
            ? Layouts.uniscoLayout[positionNotifier.currentPosition]
            : Layouts.guestLayout[positionNotifier.currentPosition],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Theme.of(context).colorScheme.background,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            surfaceTintColor: Theme.of(context).backgroundColor,
          ),
          child: isUNISCO ? const UNISCONavBar() : const GuestNavBar(),
        ),
      ),
    );
  }
}
