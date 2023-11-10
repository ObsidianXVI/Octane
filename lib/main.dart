library octane;

import 'package:flutter/material.dart';
import 'package:project_redline/project_redline.dart';
import 'package:visibility_detector/visibility_detector.dart';

part './views/home_view.dart';

part './octane_ds/systems/color_system.dart';

part './octane_ds/widgets/showcase_widget.dart';

part './store/octane_store.dart';
part './store/projects.dart';
part './store/showcase.dart';

part './utils/utils.dart';

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
        OctaneRoutes.home: (_) => HomeView(
              projects: OctaneStore.projects
                  .where((p) => p.showcase != null)
                  .toList(),
            ),
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
