part of octane.ds;

class OctaneFontFamily {
  static const String headers = 'Fraunces_Standard';
  static const String body = 'Fraunces_Soft';
}

class OctaneFont extends TextStyle {
  final Color color;

  const OctaneFont.heroTitle({
    this.color = OctaneTheme.obsidianA000,
  }) : super(
          color: color,
          fontSize: 180,
          fontFamily: OctaneFontFamily.headers,
          fontWeight: FontWeight.w800,
        );
}
