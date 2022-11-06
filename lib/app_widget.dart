import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/application/auth/auth_bloc.dart';
import 'package:keep_books/application/theme/theme_bloc.dart';
import 'package:keep_books/injection.dart';

import 'application/profile/profile_bloc.dart';
import 'presentaion/routes/location_builder.dart';
import 'presentaion/shared/web_scroll_behavior.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var routerDelegate = BeamerDelegate(
    initialPath: '/login',
    locationBuilder: beamerLocationBuilder,
    guards: [
      //problem here with how to secure store data and retrive it and check before first page build
      // Guard /books by beaming to /login if the user is unauthenticated:
      BeamGuard(
        pathPatterns: ['/books', '/books/*'],
        check: (context, state) =>
            context.read<AuthBloc>().state.status != AuthStatus.unauthenticated,
        beamToNamed: (_, __) => '/login',
      ),
      // Guard /login by beaming to /books if the user is authenticated:
      BeamGuard(
        pathPatterns: ['/login', '/register'],
        check: (context, state) =>
            context.read<AuthBloc>().state.status != AuthStatus.authenticated,
        beamToNamed: (_, __) => '/books',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>(),
        ),
        BlocProvider(
            create: (_) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.initialized())),
        BlocProvider(create: (_) => getIt<ThemeBloc>()),
      ],
      //ThemeBloc at the Root LVL
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (previousState, state) {
          if (previousState == state) return false;
          return true;
        },
        builder: (context, state) {
          return MaterialApp.router(
            scrollBehavior: MyCustomScrollBehavior(),
            title: 'Book Keep',
            //adding theme state
            debugShowCheckedModeBanner: false,
            routerDelegate: routerDelegate,
            routeInformationParser: BeamerParser(),
            //backButtonDispatcher: ,
          );
        },
      ),
    );
  }
}
