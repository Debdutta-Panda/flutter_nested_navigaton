import 'package:flutter/material.dart';
import 'package:flutter_nested_navigaton/pages/home_page.dart';
import 'package:flutter_nested_navigaton/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => MyHomePage(),
        "/main" : (context) => MainPage()
      },
    );
  }
}


