part of octane.types;

class ShowcaseData {
  final List<String> titles;
  final List<String> descriptions;
  final List<AssetImage> images;

  const ShowcaseData({
    required this.descriptions,
    required this.titles,
    required this.images,
  });
}
