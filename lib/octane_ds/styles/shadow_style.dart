part of octane.ds;

mixin ShadowStyling on Widget {
  BoxShadow get showcaseCardShadow => BoxShadow(
        color: Colors.black.withOpacity(0.84),
        spreadRadius: 5,
        blurRadius: 28,
      );
}
