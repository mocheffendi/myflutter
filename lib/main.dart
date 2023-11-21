import 'package:flutter/material.dart';
import 'package:flutter_route_name/services/routes.dart';
import 'package:flutter_route_name/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      // darkTheme: darkMode,
      // themeMode: ThemeMode.system,
      initialRoute: RoutesManager.homePage,
      onGenerateRoute: RoutesManager.generateRoute,
    );
  }
}
