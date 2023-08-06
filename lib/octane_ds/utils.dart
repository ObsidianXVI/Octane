part of octane.ds;

class OCTUDimensionTools {
  static double getHeight(BuildContext context) {
    final padding = MediaQuery.of(context).viewPadding;
    final height = MediaQuery.of(context).size.height;
    return height - padding.top;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

abstract class Routable {
  final String base;
  final String route;
  final Widget Function(BuildContext) buildFn;

  const Routable({
    required this.base,
    required this.route,
    required this.buildFn,
  });

  String toSlug() => base + route;
}
