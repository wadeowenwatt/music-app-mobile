import 'package:flutter/material.dart';
import 'screens/app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/app',
    routes: {
      '/app': (context) => App(),
    },
  ));
}