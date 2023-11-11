import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_route_name/component/button.dart';
import 'package:flutter_route_name/component/drawer.dart';
import 'package:flutter_route_name/services/routes.dart';
import 'package:flutter_route_name/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import '../component/box.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(widget.title),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Main Page',
            ),
            ElevatedButton(
                child: const Text('Go to Login Page'),
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.loginPage);
                }),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                child: const Text('go to CounterPage'),
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesManager.counterPage);
                }),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 5,
            ),
            Switch(
              value: Provider.of<ThemeProvider>(context).isDark,
              onChanged: (value) =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme(value),
            ),
            MyBox(
              color: Theme.of(context).colorScheme.primary,
              child: MyButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onTap: () {
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(
                            !Provider.of<ThemeProvider>(context, listen: false)
                                .isDark);
                    // ThemeProvider.toggleTheme(!ThemeProvider.isDark);
                    //     .toggleTheme(value);
                    // print('Toggling');
                    // Provider.of<ThemeProvider>(context, listen: false)
                    //     .toggleTheme();
                  }),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
