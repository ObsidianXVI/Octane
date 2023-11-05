import 'package:flutter/material.dart';
import 'package:octane/store/store.dart';
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
        '/': (_) => OctaneLaunchView(octaneProjects: OctaneStore.projects),
        '/dev': (_) => DevView(),
        '/showcase': (_) => OctaneShowcaseView(),
        '/projects': (_) =>  OctaneGalleryView(),
      },
    );
  }
}
