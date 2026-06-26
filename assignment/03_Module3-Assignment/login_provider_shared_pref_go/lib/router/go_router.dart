import 'package:go_router/go_router.dart';
import 'package:login_provider_shared_pref_go/screens/splash_screen.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
  ],
);
