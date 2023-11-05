part of octane.types;

class OctaneProject {
  final String name;
  final String briefDesc;
  final AssetImage thumbnail;
  final List<String> skills;
  final Color accent;
  final Color primary;
  final ShowcaseData? showcaseData;

  const OctaneProject({
    required this.name,
    required this.briefDesc,
    required this.thumbnail,
    required this.skills,
    required this.accent,
    required this.primary,
    this.showcaseData,
  });
}
