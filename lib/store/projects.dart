part of octane;

class Project {
  final String name;
  final String shortDesc;
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
    this.showcase,
  });

  String get urlSafeSlug => name.toLowerCase().replaceAll(' ', '-');
}
