import 'package:themoviedb/view/screens/detail_screen/detail_screen.dart';
import 'package:themoviedb/view/screens/main_screen/main_screen.dart';

class Routes {
  final routes = {
    '/main': ((context) => const MainScreen()),
    '/detail': ((context) => const DetailScreen())
  };
}
