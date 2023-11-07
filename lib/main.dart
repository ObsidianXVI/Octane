library octane;

import 'package:flutter/material.dart';
import 'package:project_redline/project_redline.dart';

part './views/home_view.dart';

part './octane_ds/systems/color_system.dart';

part './store/projects.dart';
part './store/showcase.dart';

void main() {
  runApp(const OctaneApp());
}

class OctaneApp extends StatelessWidget {
  const OctaneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OctaneRoutes.home: (_) => const HomeView(projects: []),
      },
    );
  }
}

class OctaneRoutes {
  static const String home = '/';
  static const String gallery = '/gallery';
  static const String about = '/about';
  static const String project = '/project';
}
