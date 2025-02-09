import 'package:go_router/go_router.dart';
import 'package:untitled/screens/HomeScreen.dart';
import 'package:untitled/components/LoginController.dart';
import 'package:untitled/screens/Welcome.dart';
import 'package:untitled/screens/Login.dart';
import 'package:untitled/screens/SplashScreen.dart';

final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/welcome',
        builder: (context, state) => Welcome(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => Login(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          final loginController = state.extra as LoginController;
          return HomeScreen(loginController: loginController);
        },
      ),
    ],
);
