import 'package:flutter/material.dart';
//Propias
import 'package:america_precolombina_app/src/pages/work_in_progress_page.dart';
import 'package:america_precolombina_app/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'América Precolombina',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => WorkInProgress());
      },
    );
  }
}
