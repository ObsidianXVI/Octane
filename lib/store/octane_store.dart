part of octane;

class OctaneStore {
  static final List<Project> projects = [
    Project(
      name: 'Lighthouse Project',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: const Color(0xFF221732),
      accent: const Color(0xFFA875FB),
      thumbnail: const AssetImage('images/lh1.jpeg'),
      showcase: Showcase(
        images: [
          Image.asset('images/code.png'),
          Image.asset('images/lh1.jpeg'),
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
    Project(
      name: 'The Hyperion Project',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: const Color(0xFF0D1B2A),
      accent: const Color(0xFFFCA311),
      thumbnail: const AssetImage('images/lh1.jpeg'),
      showcase: Showcase(
        images: [
          Image.asset('images/code.png'),
          Image.asset('images/lh1.jpeg'),
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
    Project(
      name: 'Letterpress',
      shortDesc:
          "Lorem ipsum dolor sit amet consectetur. Elementum adipiscing magna ut dui eleifend volutpat enim quis. Cras mauris.",
      primary: const Color(0xFF010102),
      accent: const Color(0xFFF8F8F8),
      thumbnail: const AssetImage('images/lh1.jpeg'),
      showcase: Showcase(
        images: [
          Image.asset('images/code.png'),
          Image.asset('images/lh1.jpeg'),
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
