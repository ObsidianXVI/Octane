import 'package:flutter/material.dart';
import './views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Material(
        child: OCTVLaunchView(),
      ),
      routes: {
        '/letterpress': (context) => const Material(
              child: OCTVLetterpressHomeView(),
            ),
        '/letterpress/home': (context) => const Material(
              child: OCTVLetterpressHomeView(),
            ),
      },
    );
  }
}
