part of octane.types;

class OctaneShowcase {
  final List<String> titles;
  final List<String> descriptions;
  final List<AssetImage> images;

  const OctaneShowcase({
    required this.descriptions,
    required this.titles,
    required this.images,
  });
}
