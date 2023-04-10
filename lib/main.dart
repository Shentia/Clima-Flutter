import 'package:flutter/material.dart';
import 'package:n_clima/screens/city_screen.dart';
import 'package:n_clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingScreen(),
        '/city': (context) => CityScreen(),
      },
    );
  }
}
