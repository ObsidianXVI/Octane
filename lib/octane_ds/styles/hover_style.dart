part of octane;

/// Exposes a [hovering] variable to monitor hover state. Works with [CardStyling]
/// to change the card border based on hover state.
mixin HoverStyling<T extends StatefulWidget> on State<T>, CardStyling {
  bool hovering = false;

  Widget hoverRegion({
    required Widget child,
    void Function(PointerEnterEvent)? onEnter,
    void Function(PointerExitEvent)? onExit,
  }) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        hovering = true;
        gradientStop2 = 0.75;
        onEnter?.call(event);
      }),
      onExit: (event) => setState(() {
        hovering = false;
        gradientStop2 = 1;
        onExit?.call(event);
      }),
      child: child,
    );
  }
}
