import 'package:flutter/material.dart';
import 'package:octane/octane_ds/octane_ds.dart';
import './views/views.dart';

void main() {
  runApp(const OctaneApp());
}

class OctaneApp extends StatelessWidget {
  const OctaneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/dev',
      routes: {
        '/home': (context) => const LaunchView(),
        '/dev': (context) => DevView(),
      },
    );
  }
}
