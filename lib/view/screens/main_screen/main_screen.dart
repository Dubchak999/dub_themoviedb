import 'package:flutter/material.dart';
import 'package:themoviedb/view/screens/main_screen/views/new_movie_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NewMovieView(),
      ),
    );
  }
}
