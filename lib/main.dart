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
        '/': (_) => const LaunchView(),
        '/dev': (_) => DevView(),
        '/showcase': (_) => ShowcaseView(),
        '/projects': (_) => const ProjectsGalleryView(),
      },
    );
  }
}
