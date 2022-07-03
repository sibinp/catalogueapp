import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(), // no need of this since route / is there
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
          // brightness: Brightness.dark, // dark brightness will override any color given below
          primarySwatch: Colors.blue),
      initialRoute: "/home",
      routes: {
        "/": (context) =>
            LoginPage(), // LoginPage is an object here and we denote it with () at the end
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}

// method name should start with lowercase letter