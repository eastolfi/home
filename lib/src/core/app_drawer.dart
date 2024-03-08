import 'package:flutter/material.dart';
import 'package:home/src/pages/home/home.view.dart';
import 'package:home/src/pages/meds/meds_view.dart';
import 'package:home/src/settings/settings_view.dart';

class AppDrawerDestination {
  const AppDrawerDestination(this.label, this.icon, this.selectedIcon, this.destination);

  final String label;
  final String destination;
  final Widget icon;
  final Widget selectedIcon;
}

const List<AppDrawerDestination> mainDestinations = <AppDrawerDestination>[
  AppDrawerDestination('Home', Icon(Icons.home_outlined), Icon(Icons.home), HomeView.routeName),
  AppDrawerDestination('Meds', Icon(Icons.medication_outlined), Icon(Icons.medication), MedsView.routeName),
];

const List<AppDrawerDestination> otherDestinations = <AppDrawerDestination>[
  AppDrawerDestination('Settings', Icon(Icons.settings_outlined), Icon(Icons.settings), SettingsView.routeName),
];

Widget buildDrawerScaffold(BuildContext context) {
  return NavigationDrawer(
    onDestinationSelected: (value) {
      Navigator.pop(context);
      Navigator.restorablePushNamed(context, [...mainDestinations, ...otherDestinations][value].destination);
    },
    children: <Widget>[
      // const DrawerHeader(
      //   // decoration: BoxDecoration(
      //   //   color: Colors.blue,
      //   // ),
      //   child: Text('Home App'),
      // ),
      Padding(
        padding: const EdgeInsets.fromLTRB(28, 16, 16, 10),
        child: Text('Home App', style: Theme.of(context).textTheme.titleSmall)
      ),

      ...mainDestinations.map(
        (AppDrawerDestination destination) => NavigationDrawerDestination(
          label: Text(destination.label),
          icon: destination.icon,
          selectedIcon: destination.selectedIcon,
        )
      ),

      const Padding(
        padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
        child: Divider(),
      ),

      ...otherDestinations.map(
        (AppDrawerDestination destination) => NavigationDrawerDestination(
          label: Text(destination.label),
          icon: destination.icon,
          selectedIcon: destination.selectedIcon,
        )
      ),

    ],
  );
}
