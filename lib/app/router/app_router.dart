import 'package:api_test/app/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Page|Screen,Route')
class AppRouter extends RootStackRouter {
  static final AppRouter _instance = AppRouter._internal();
  factory AppRouter() => _instance;
  AppRouter._internal();

  static AppRouter get instance => _instance;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/', initial: true),
    AutoRoute(page: HomeRoute.page, path: '/HomeRoute'),
    AutoRoute(page: ProfileRoute.page, path: '/ProfileRoute'),
  ];
}
