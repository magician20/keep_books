import 'package:auto_route/auto_route.dart';
import 'package:keep_books/presentaion/screens/Home/home_page.dart';
import 'package:keep_books/presentaion/screens/sign_in/sign_in_page.dart';

import '../screens/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  //splash will be removed later on and implemented native splash for android and ios
  //that cna't happen because there's no way to call run AuthBlocListener when native splash running
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    //"/signup" path will be handle by that also
    AutoRoute(
      path: "/signin",
      page: SignInPage,
      maintainState: false,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    //Home routes with a nested router (NEED TO ADD GUARD AND CHECK NAVIGATION)
    AutoRoute(
      path: "/home", 
      page: HomePage, 
      children: [
      RedirectRoute(path: '*', redirectTo: ''),
    ]),
    // our other routes

    // redirect all other paths
    RedirectRoute(path: '/signup', redirectTo: '/signin'),
    RedirectRoute(path: '*', redirectTo: '/signin'),
    //we need 404 page for Web
  ],
)
class $AppRouter {}
