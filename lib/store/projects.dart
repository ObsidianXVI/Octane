part of octane;

class Project {
  final String name;
  final String shortDesc;
  final String about;
  // product, process, delta skills
  final Color primary;
  final Color accent;
  final ImageProvider thumbnail;
  final Map<String, ImageProvider> allAssets;
  final Showcase? showcase;

  const Project({
    required this.name,
    required this.shortDesc,
    required this.primary,
    required this.accent,
    required this.thumbnail,
    required this.allAssets,
    required this.about,
    this.showcase,
  });

  String get urlSafeSlug => name.toLowerCase().replaceAll(' ', '-');
}
