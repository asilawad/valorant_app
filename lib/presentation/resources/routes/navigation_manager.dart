import 'package:flutter/cupertino.dart';

class NavigationManager {
  NavigationManager._();
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static pushNamed(String routeName) =>
      navigatorKey.currentState!.pushNamed(routeName);

  static pushReplacementNamed(String routeName) =>
      navigatorKey.currentState!.pushReplacementNamed(routeName);

  static pop() {
    navigatorKey.currentState!.pop();
  }
}
