import 'package:go_router/go_router.dart';
import 'package:money_management_app/views/pages/home_page/home_page.dart';

class TRoutes {
  static const String HOMEPAGE = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: HOMEPAGE,
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}
