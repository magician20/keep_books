import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_books/app_widget.dart';
import 'package:keep_books/application/simple_bloc_delegate.dart';
import 'package:keep_books/injection.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  //build bloc observer
  BlocOverrides.runZoned(() async {
      //WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+
      //before using any plugins if the code is executed before runApp.
      WidgetsFlutterBinding.ensureInitialized();
      //Firebase Web initializeApp
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      //build injection
      configureDependencies();

      //For remove # from URL for all platform, read docs
      setPathUrlStrategy();
      runApp(const App());
    },
    blocObserver: SimpleBlocDelegate(),
  );
}
