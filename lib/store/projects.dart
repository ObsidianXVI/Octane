part of octane;

class Project {
  final String name;
  final String shortDesc;
  final String logo;
  final List<Widget> about;
  final List<Widget> product;
  final List<Widget> process;
  final List<Widget> delta;
  final Color primary;
  final Color accent;
  final String thumbnail;
  final Map<String, ImageProvider> allAssets;
  final Showcase? showcase;

  const Project({
    required this.name,
    required this.shortDesc,
    required this.logo,
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
