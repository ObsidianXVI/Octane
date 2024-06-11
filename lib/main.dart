library octane;

import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project_redline/multi_platform/multi_platform.dart';
import 'package:project_redline/project_redline.dart';
import 'package:octane/octane_ds/octane_ds.dart';
import 'package:video_player/video_player.dart';

part './views/home_view.dart';
part './views/gallery_view.dart';
part './views/project_view.dart';
part './views/about_view.dart';
part './views/professional_details_view.dart';
part './views/dev_view.dart';

part './store/octane_store.dart';
part './store/projects.dart';
part './store/showcase.dart';

part './utils/utils.dart';

bool shownFeatureGuidance = false;
final StreamController<Color> barColorStreamController =
    StreamController.broadcast();
final Stream<Color> barColorStream = barColorStreamController.stream;
bool projectShowcaseInView = false;
void main() {
  Multiplatform.init(
    platformSelector: (width, height) {
      if (1300 <= width && width <= 1600) {
        if (750 <= height && height <= 1000) {
          return const DesktopPlatform();
        }
      } else if (340 <= width && width <= 500) {
        if (630 <= height && height <= 770) {
          return const MobilePlatform();
        }
      }
      throw Exception(
          "Website not designed for screen dimension of $width x $height");
    },
    baseStyle: const TextStyle(fontFamily: 'Fraunces_Standard'),
  );
  runApp(const OctaneApp());
}

class OctaneApp extends StatefulWidget {
  const OctaneApp({super.key});

  @override
  State<StatefulWidget> createState() => OctaneAppState();
}

class OctaneAppState extends State<OctaneApp> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: OctaneTheme.obsidianD150,
      stream: barColorStream,
      builder: (context, snapshot) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: OctaneRoutes.home,
        theme: ThemeData(primaryColor: snapshot.data!),
        routes: {
          '/dev': (_) => DevView(),
          OctaneRoutes.home: (_) => const HomeView(),
          OctaneRoutes.gallery: (_) => GalleryView(
                projects: OctaneStore.projects,
              ),
          OctaneRoutes.about: (_) => const AboutView(),
          OctaneRoutes.professional: (_) => const ProfessionalDetailsView(),
          ...{
            for (Project p in OctaneStore.projects)
              projectViewingSlugFor(p): (_) => ProjectView(project: p),
          }
        },
      ),
    );
  }
}

class OctaneRoutes {
  static const String home = '/';
  static const String gallery = '/gallery';
  static const String about = '/about';
  static const String project = '/project';
  static const String professional = '/professional';

  static const Map<String, String> directRoutes = {
    'Home': home,
    'About': about,
    'Gallery': gallery,
    'Professional': professional,
  };
}
