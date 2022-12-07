import 'package:calculator/presentation/routes/route_constants.dart';
import 'package:calculator/presentation/routes/routes.dart';
import 'package:calculator/utils/setup_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: RouteList.initial,
        routes: Routes.routes,
        theme: ThemeData());
  }
}
