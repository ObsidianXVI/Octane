part of octane;

class Project {
  final String name;
  final String shortDesc;
  final String about;
  final List<String> product;
  final List<String> process;
  final List<String> delta;
  final Color primary;
  final Color accent;
  final String thumbnail;
  final Map<String, ImageProvider> allAssets;
  final Showcase? showcase;

  const Project({
    required this.name,
    required this.shortDesc,
    required this.product,
    required this.process,
    required this.delta,
    required this.primary,
    required this.accent,
    required this.thumbnail,
    required this.allAssets,
    required this.about,
    this.showcase,
  });

  String get urlSafeSlug => name.toLowerCase().replaceAll(' ', '-');
}
