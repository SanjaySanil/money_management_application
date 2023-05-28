import 'package:flutter/material.dart';
import 'package:money_management_app/routes/routes.dart';
import 'package:money_management_app/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: TRoutes.router,
      debugShowCheckedModeBanner: false,
      theme:TTheme.themeData,
      themeMode:ThemeMode.light,
    );
  }
}
