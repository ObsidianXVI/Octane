part of octane;

class Project {
  final String name;
  final Color primary;
  final Color accent;
  final Showcase? showcase;

  const Project({
    required this.name,
    required this.primary,
    required this.accent,
    this.showcase,
  });
}
