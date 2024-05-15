part of octane.ds;

mixin CardStyling {
  Color borderTintColor = OctaneTheme.obsidianB050;
  Color fillColor = OctaneTheme.obsidianC100;
  Color endFillColor = Colors.transparent;
  Color endBorderColor = Colors.transparent;
  AlignmentGeometry begin = Alignment.topLeft;
  AlignmentGeometry end = Alignment.bottomRight;
  double endStop = 1;

  BoxBorder get cardBorder {
    return GradientBoxBorder(
      width: 1,
      gradient: LinearGradient(begin: begin, end: end, colors: [
        borderTintColor,
        endBorderColor,
      ], stops: [
        0,
        //,
        endStop,
      ]),
    );
  }

  LinearGradient get cardBackground {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [fillColor, endFillColor],
      stops: [0, endStop],
    );
  }

  Widget backgroundBlur({required Widget child}) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: child,
      ),
    );
  }

  Widget hoverTransitionContainer({
    required BoxDecoration decoration,
    required Widget child,
    double? width,
    double? height,
  }) {
    return Container(
      decoration: decoration,
      child: child,
    );
  }
}

class GradientBoxBorder extends BoxBorder {
  const GradientBoxBorder({required this.gradient, this.width = 1.0});

  final Gradient gradient;

  final double width;

  @override
  BorderSide get bottom => BorderSide.none;

  @override
  BorderSide get top => BorderSide.none;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(width);

  @override
  bool get isUniform => true;

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    TextDirection? textDirection,
    BoxShape shape = BoxShape.rectangle,
    BorderRadius? borderRadius,
  }) {
    switch (shape) {
      case BoxShape.circle:
        assert(
          borderRadius == null,
          'A borderRadius can only be given for rectangular boxes.',
        );
        _paintCircle(canvas, rect);
        break;
      case BoxShape.rectangle:
        _paintRRect(canvas, rect, borderRadius ?? BorderRadius.circular(5));
        return;
    }
  }

  void _paintRect(Canvas canvas, Rect rect) {
    canvas.drawRect(rect.deflate(width / 2), _getPaint(rect));
  }

  void _paintRRect(Canvas canvas, Rect rect, BorderRadius borderRadius) {
    final rrect = borderRadius.toRRect(rect).deflate(width / 2);
    canvas.drawRRect(rrect, _getPaint(rect));
  }

  void _paintCircle(Canvas canvas, Rect rect) {
    final paint = _getPaint(rect);
    final radius = (rect.shortestSide - width) / 2.0;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  ShapeBorder scale(double t) {
    return this;
  }

  Paint _getPaint(Rect rect) {
    return Paint()
      ..strokeWidth = width
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke;
  }
}
