import 'package:go_router/go_router.dart';
import 'package:money_management_app/views/pages/add_new_entry/add_new_entry.dart';
import 'package:money_management_app/views/pages/home_page/home_page.dart';


class TRoutes {
  static const String HOMEPAGE = '/';
  static const String ADDNEWENTRY = '/addNewEntry';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: HOMEPAGE,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: ADDNEWENTRY,
        builder: (context, state) => AddNewEntry(),
      ),
    ],
  );
}
