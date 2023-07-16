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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: OCTVLaunchView(),
      ),
      routes: {},
    );
  }
}
