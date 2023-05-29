import 'package:flutter/material.dart';
import 'package:money_management_app/controller/add_new_entry_controller/add_new_entry_controller.dart';
import 'package:money_management_app/controller/home_page_controller/home_page_controller.dart';
import 'package:money_management_app/routes/routes.dart';
import 'package:money_management_app/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomePageController(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddNewEntryController(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: TRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: TTheme.themeData,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
