import 'package:fausto/features/alphabet/presentation/page/alphabet_page.dart';
import 'package:fausto/features/animal/presentation/page/animal_page.dart';
import 'package:fausto/features/home/presentation/page/home_page.dart';
import 'package:fausto/features/number/presentation/page/number_page.dart';
import 'package:fausto/features/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';
import 'package:fausto/core/routes/route_names.dart';
class RouteManager {
  static final RouteManager _instance = RouteManager._();
  RouteManager._();
  factory RouteManager() => _instance;

  final GoRouter router = GoRouter(
    initialLocation: RouteNames.splash,
    routes: [
      GoRoute(
        path: RouteNames.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouteNames.home, 
        name: 'home', 
        builder: (context, state) => const HomePage()
      ),
      GoRoute(
        path: RouteNames.alphabet,
        name: 'alphabet',
        builder: (context, state) => const AlphabetPage()
      ),

      GoRoute(
        path: RouteNames.animal,
        name: 'animal',
        builder: (context, state) => const AnimalPage()
      ),
     
      GoRoute(
        path: RouteNames.number,
        name: 'number',
        builder: (context, state) => const NumberPage()
      ),
    
    ]
);
}
