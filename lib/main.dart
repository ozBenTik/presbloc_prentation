import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:state_management/state_management.dart';
import 'package:ui/ui.dart';

void main() {
  Bloc.observer = const StateObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}