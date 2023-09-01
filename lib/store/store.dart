library octane.store;

import 'package:flutter/material.dart';
import 'package:octane/types/types.dart';

class OctaneStore {
  static const List<OctaneProject> projects = [
    OctaneProject(
      name: "Lighthouse Project",
      briefDesc:
          'Lighthouse is a personal productivity system that revolutionises the way you organise your life.',
      thumbnail: AssetImage('images/lh1.jpeg'),
      skills: ["Flutter", "Deployment"],
    ),
    OctaneProject(
      name: "Letterpress Project",
      briefDesc:
          'Letterpress is my personal blogging page, driven by a custom engine.',
      thumbnail: AssetImage('images/blg1.jpeg'),
      skills: ["Flutter", "Firebase"],
    ),
  ];
}
