part of octane.ds;

/// Exposes a [hovering] variable to monitor hover state. Works with [CardStyling]
/// to change the card border based on hover state.
mixin HoverStyling<T extends StatefulWidget> on State<T>, CardStyling {
  bool hovering = false;

  Widget hoverRegion({
    required Widget child,
    void Function(PointerEnterEvent)? onEnter,
    void Function(PointerExitEvent)? onExit,
    void Function()? onTap,
  }) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        hovering = true;
        // gradientStop2 = 1;
        endBorderColor = borderTintColor;
        endFillColor = fillColor;
        onEnter?.call(event);
      }),
      onExit: (event) => setState(() {
        hovering = false;
        //gradientStop2 = 1;
        endFillColor = endBorderColor = Colors.transparent;
        onExit?.call(event);
      }),
      cursor: this is Clickable ? SystemMouseCursors.click : MouseCursor.defer,
      child: this is Clickable
          ? GestureDetector(
              onTap: onTap,
              child: child,
            )
          : child,
    );
  }
}

mixin Clickable {}
