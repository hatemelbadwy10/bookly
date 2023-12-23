import 'package:bookly/features/home/presentation/views/book_deatils_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: ( context,  state) => const SplashView(),
    ),
      GoRoute(
      path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
    GoRoute(
      path: kBookDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetailsView();
      },
    ),
  ]
  );
}