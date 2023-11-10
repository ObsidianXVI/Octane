part of octane;

class Project {
  final String name;
  final String shortDesc;
  final Color primary;
  final Color accent;
  final ImageProvider thumbnail;
  final Showcase? showcase;

  const Project({
    required this.name,
    required this.shortDesc,
    required this.primary,
    required this.accent,
    required this.thumbnail,
    this.showcase,
  });
}
