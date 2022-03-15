import 'package:flutter/material.dart';
import 'package:themoviedb/view/screens/detail_screen/views/coming_soon_view.dart';
import 'package:themoviedb/view/screens/main_screen/views/new_movie_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            NewMovieView(),
            ComingSoonView(),
          ],
        ),
      ),
    );
  }
}
