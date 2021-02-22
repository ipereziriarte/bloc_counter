import 'package:counter_app/domain/cubits/counter_cubit.dart';
import 'package:counter_app/presentation/screens/home_screen.dart';
import 'package:counter_app/presentation/screens/second_screen.dart';
import 'package:counter_app/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(
                  title: 'HomeScreen',
                  color: Colors.blueAccent,
                ));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => SecondScreen(
                  title: 'Second',
                  color: Colors.redAccent,
                ));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => ThirdScreen(
                  title: 'Third',
                  color: Colors.greenAccent,
                ));
        break;
      default:
        return null;
    }
  }
}
