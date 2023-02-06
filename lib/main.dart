import 'package:book_list/book_list.dart';
import 'package:book_list/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: BookList(),
      onGenerateRoute: RouterGenerator.routeGenerator,
    );
  }
}
