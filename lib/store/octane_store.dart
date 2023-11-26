part of octane;

class OctaneStore {
  static final List<Project> projects = [
    const Project(
      name: 'Lighthouse Project',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: Color(0xFF221732),
      accent: Color(0xFFA875FB),
      thumbnail: AssetImage('images/lh1.jpeg'),
      showcase: Showcase(
        images: [
          AssetImage('images/lighthouse_project/github_dbprovider_changes.png'),
          AssetImage(
              'images/lighthouse_project/figjam_launchcontext_brainstorm.png'),
          AssetImage('images/lighthouse_project/figma_design_system.png'),
          AssetImage('images/lighthouse_project/dart_widget_inspector.png'),
          AssetImage('images/lighthouse_project/github_bugs.png'),
        ],
        headers: [
          "Flutter and Dart Crash Course",
          "Brand and Identity Design",
        ],
        descriptions: [
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
        ],
      ),
    ),
    const Project(
      name: 'The Hyperion Project',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: Color(0xFF0D1B2A),
      accent: Color(0xFFFCA311),
      thumbnail: AssetImage('images/lh1.jpeg'),
      showcase: Showcase(
        images: [
          AssetImage('images/code.png'),
          AssetImage('images/lh1.jpeg'),
        ],
        headers: [
          "Dart Superpowers",
          "Research and Development",
        ],
        descriptions: [
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
        ],
      ),
    ),
    const Project(
      name: 'Letterpress',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: Color(0xFF010102),
      accent: Color(0xFFF8F8F8),
      thumbnail: AssetImage('images/lh1.jpeg'),
      showcase: Showcase(
        images: [
          AssetImage('images/code.png'),
          AssetImage('images/lh1.jpeg'),
        ],
        headers: [
          "Dart Superpowers",
          "Research and Development",
        ],
        descriptions: [
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
        ],
      ),
    ),
    const Project(
      name: 'Orca',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: Color(0xFFedf2f4),
      accent: Color(0xFF2b2d42),
      thumbnail: AssetImage('images/lh1.jpeg'),
    ),
    const Project(
      name: 'Fireside',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: Color(0xFF6a994e),
      accent: Color(0xFFbc4749),
      thumbnail: AssetImage('images/lh1.jpeg'),
    ),
  ];
}
