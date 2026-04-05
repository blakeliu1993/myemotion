import 'package:emotion_laptop/l10n/app_localizations.dart';
import 'package:emotion_laptop/pages/datas/data_main.dart';
import 'package:emotion_laptop/pages/debug/debug_main.dart';
import 'package:emotion_laptop/pages/home/home.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations lo = AppLocalizations.of(context)!;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightGreen),
            child: Center(child: Text(lo.welcome_drawer_label)),
          ),
          ListTile(
            title: Text(lo.home_title_label),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (route) => false,
              );
            },
          ),
          ListTile(
            title: Text(lo.date_title_label),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const DataMainPage()),
                (route) => false,
              );
            },
          ),
          ListTile(
            title: Text(lo.debug_title_label),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const DebugMainPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
