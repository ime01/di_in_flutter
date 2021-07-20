import 'package:di_in_flutter/services/locator.dart';
import 'package:di_in_flutter/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  locator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: HomeView()
    );
  }
}

