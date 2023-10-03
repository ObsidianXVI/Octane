library octane.store;

import 'package:flutter/material.dart';
import 'package:octane/octane_ds/octane_ds.dart';
import 'package:octane/types/types.dart';

class OctaneStore {
  static final List<OctaneProject> projects = [
    OctaneProject(
      name: "Lighthouse Project",
      briefDesc:
          'Lighthouse is a personal productivity system that revolutionises the way you organise your life.',
      thumbnail: const AssetImage('images/lh1.jpeg'),
      skills: ["Flutter", "Deployment"],
      accent: const Color(0xFFA875FB),
      primary: const Color(0xFF0B0617),
      showcase: OctaneShowcase(
        titles: [
          'Lorem',
          'Ipsum',
          'Dolor',
          'Sit',
        ],
        descriptions: [
          'Lorem Ipsum',
          'Ipsum Dolor',
          'Dolor Sit',
          'Sit Amet',
        ],
        images: List<AssetImage>.generate(
            4, (_) => const AssetImage('images/lh1.jpeg')),
      ),
    ),
    OctaneProject(
      name: "The Hyperion Project",
      briefDesc: 'A formal research into autonomic computing.',
      thumbnail: AssetImage('images/blg1.jpeg'),
      skills: ["Flutter", "Firebase"],
      accent: OctaneTheme.obsidianA150,
      primary: OctaneTheme.obsidianD050,
    ),
    OctaneProject(
      name: "Letterpress Project",
      briefDesc:
          'Letterpress is my personal blogging page, driven by a custom engine.',
      thumbnail: AssetImage('images/blg1.jpeg'),
      skills: ["Flutter", "Firebase"],
      accent: OctaneTheme.obsidianA150,
      primary: OctaneTheme.obsidianD050,
    ),
  ];
}
