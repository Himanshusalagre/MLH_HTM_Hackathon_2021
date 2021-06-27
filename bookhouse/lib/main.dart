import 'package:bookify/Screens/Components/sell_books.dart';
import 'package:bookify/Screens/home_page.dart';
import 'package:bookify/Screens/login_page.dart';
import 'package:bookify/Screens/result_dart.dart';
import 'package:bookify/Screens/Components/search_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bookify",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      ),
      home: LoginPage(),
    );
  }
}
