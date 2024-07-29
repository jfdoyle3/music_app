import 'package:flutter/material.dart';
import 'package:music_app/pages/theme_provider.dart';
import 'package:music_app/themes/light_mode.dart';
import 'package:music_app/themes/dark_mode.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    ); // MaterialApp
  }
}
