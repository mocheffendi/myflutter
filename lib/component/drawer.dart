import 'package:flutter/material.dart';
import 'package:flutter_route_name/services/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const DrawerHeader(
            child: Icon(
          Icons.home,
          size: 48,
        )),
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
      ]),
    );
  }
}
