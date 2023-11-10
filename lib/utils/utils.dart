part of octane;

extension StringUtils on String {
  String get brokenIntoLines => split(' ').join('\n');
}
