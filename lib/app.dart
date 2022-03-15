import 'package:flutter/material.dart';
import 'package:themoviedb/config/routes.dart';
import 'package:themoviedb/config/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dub TheMovieDB',
      routes: Routes().routes,
      initialRoute: '/main',
      theme: MyThemeData().themeData,
    );
  }
}
