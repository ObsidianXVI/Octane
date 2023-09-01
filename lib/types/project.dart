part of octane.types;

class OctaneProject {
  final String name;
  final String briefDesc;
  final ImageProvider<Object> thumbnail;
  final List<String> skills;

  const OctaneProject({
    required this.name,
    required this.briefDesc,
    required this.thumbnail,
    required this.skills,
  });
}
