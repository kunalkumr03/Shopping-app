import 'package:flutter/material.dart';
import 'package:shop_app_flutter/features/auth/screens/auth_screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreens.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreens(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('scrren does not exist'),
          ),
        ),
      );
  }
}
