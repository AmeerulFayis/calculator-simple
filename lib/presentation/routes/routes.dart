import 'package:calculator/presentation/homescreen/home_screen.dart';
import 'package:calculator/presentation/routes/route_constants.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes => {
        RouteList.initial: (context) => const HomeScreen(),
      };
}
