library octane;

import 'dart:async';

import 'package:flutter/material.dart';
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
Widget currentHotbox = const OctaneNavigationHotbox();
void main() {
  runApp(const OctaneApp());
}

class OctaneApp extends StatelessWidget {
  const OctaneApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1200 ||
        MediaQuery.of(context).size.height < 600) {
      return const Directionality(
        textDirection: TextDirection.ltr,
        child: Text("Only large windows supported for now."),
      );
    }
    return StreamBuilder(
      initialData: OctaneTheme.obsidianD150,
      stream: barColorStream,
      builder: (context, snapshot) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: OctaneRoutes.home,
        theme: ThemeData(primaryColor: snapshot.data!),
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
