import 'package:counter_app/domain/cubits/counter_cubit.dart';
import 'package:counter_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomeScreen(
            title: 'Flutter Demo Home Page',
            color: Colors.blueAccent,
          ),
        ));
  }
}
