import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_route_name/services/routes.dart';
import 'package:flutter_route_name/theme/theme_provider.dart';
// import 'package:flutter_route_name/theme/themes_data.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // bool? isDarktheme = false;
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: GestureDetector(
            child: const Icon(
              Icons.home,
              size: 48,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(RoutesManager.homePage);
            },
          ),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Counter Page'),
          onTap: () {
            Navigator.of(context).pushNamed(RoutesManager.counterPage);
          },
        ),
        ListTile(
          leading: const Icon(Icons.login),
          title: const Text('Login Page'),
          onTap: () {
            Navigator.of(context).pushNamed(RoutesManager.loginPage);
          },
        ),
        ListTile(
          leading: (Provider.of<ThemeProvider>(context).isDark)
              ? InkWell(
                  child: const Icon(Icons.nights_stay_rounded),
                  onTap: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(
                            !Provider.of<ThemeProvider>(context, listen: false)
                                .isDark);
                  })
              : InkWell(
                  child: const Icon(Icons.sunny),
                  onTap: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(
                            !Provider.of<ThemeProvider>(context, listen: false)
                                .isDark);
                  }),
          title: const Text('Theme Mode'),
          onTap: () {
            Provider.of<ThemeProvider>(context, listen: false).toggleTheme(
                !Provider.of<ThemeProvider>(context, listen: false).isDark);
            // log(Provider.of<ThemeProvider>(context, listen: false)
            //     .isDark
            //     .toString());
          },
          trailing: Switch(
            value: Provider.of<ThemeProvider>(context).isDark,
            onChanged: (value) =>
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(value),
          ),
        ),
      ]),
    );
  }
}
