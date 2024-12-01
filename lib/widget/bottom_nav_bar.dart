import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:unisco_app/notifiers/position_notifier.dart';

class UNISCONavBar extends StatelessWidget {
  const UNISCONavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PositionNotifier>(
      builder: (context, positionNotifier, _) => NavigationBar(
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/home_icon.svg'),
            selectedIcon: SvgPicture.asset(
              'assets/svg/home_icon.svg',
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SvgPicture.asset('assets/svg/unisco-light.svg'),
            ),
            selectedIcon: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SvgPicture.asset(
                'assets/svg/unisco-light.svg',
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            label: "UNISCO",
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/alert-circle.svg'),
            selectedIcon: SvgPicture.asset(
              'assets/svg/alert-circle.svg',
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "About UNISCO",
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/user.svg'),
            selectedIcon: SvgPicture.asset(
              'assets/svg/user.svg',
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Profile",
          ),
        ],
        selectedIndex: positionNotifier.currentPosition,
        onDestinationSelected: (value) =>
            positionNotifier.currentPosition = value,
      ),
    );
  }
}

class GuestNavBar extends StatelessWidget {
  const GuestNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PositionNotifier>(
      builder: (context, positionNotifier, _) => NavigationBar(
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/home_icon.svg'),
            selectedIcon: SvgPicture.asset(
              'assets/svg/home_icon.svg',
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/alert-circle.svg'),
            selectedIcon: SvgPicture.asset(
              'assets/svg/alert-circle.svg',
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "About UNISCO",
          ),
          NavigationDestination(
            icon: SvgPicture.asset('assets/svg/user.svg'),
            selectedIcon: SvgPicture.asset(
              'assets/svg/user.svg',
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Profile",
          ),
        ],
        selectedIndex: positionNotifier.currentPosition,
        onDestinationSelected: (value) =>
            positionNotifier.currentPosition = value,
      ),
    );
  }
}
