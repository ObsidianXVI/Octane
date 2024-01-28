library octane;

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotbox/hotbox.dart';
import 'package:project_redline/project_redline.dart';
import 'package:visibility_detector/visibility_detector.dart';

part './views/home_view.dart';
part './views/gallery_view.dart';
part './views/project_view.dart';
part './views/dev_view.dart';

part './octane_ds/systems/color_system.dart';
part './octane_ds/systems/type_system.dart';
part './octane_ds/styles/card_style.dart';
part './octane_ds/styles/hover_style.dart';
part './octane_ds/styles/shadow_style.dart';
part './octane_ds/components/gallery_card.dart';
part './octane_ds/components/showcase_card.dart';
part './octane_ds/widgets/showcase_widget.dart';
part './octane_ds/widgets/octane_hotbox.dart';
part './octane_ds/support/view_scaffold.dart';

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
      initialRoute: OctaneRoutes.home,
      routes: {
        '/dev': (_) => DevView(),
        OctaneRoutes.home: (_) => HomeView(
              projects: OctaneStore.projects
                  .where((p) => p.showcase != null)
                  .toList(),
            ),
        OctaneRoutes.gallery: (_) => GalleryView(
              projects: OctaneStore.projects,
            ),
        ...{
          for (Project p in OctaneStore.projects)
            projectViewingSlugFor(p): (_) => ProjectView(project: p),
        }
      },
    );
  }
}

class OctaneRoutes {
  static const String home = '/';
  static const String gallery = '/gallery';
  static const String about = '/about';
  static const String project = '/project';
  static const Map<String, String> directRoutes = {
    'Home': home,
    //'About': about,
    'Gallery': gallery,
  };
}
