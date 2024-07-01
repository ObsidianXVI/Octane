part of octane.ds;

/// Exposes a [hovering] variable to monitor hover state. Works with [CardStyling]
/// to change the card border based on hover state.
mixin HoverStyling<T extends StatefulWidget> on State<T>, CardStyling {
  Widget hoverRegion({
    required Widget child,
    void Function(PointerEnterEvent)? onEnter,
    void Function(PointerExitEvent)? onExit,
    void Function()? onTap,
  }) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        hovering = true;
        onEnter?.call(event);
      }),
      onExit: (event) => setState(() {
        hovering = false;
        onExit?.call(event);
      }),
      cursor: this is Clickable ? SystemMouseCursors.click : MouseCursor.defer,
      child: this is Clickable
          ? Listener(
              onPointerDown: (_) => setState(() {
                pressing = true;
              }),
              onPointerUp: (_) {
                setState(() {
                  pressing = false;
                });
                onTap?.call();
              },
              child: child,
            )
          : child,
    );
  }
}

mixin Clickable {
  Widget clickRegion({
    required Widget child,
    required void Function(TapDownDetails)? onTapDown,
  }) {
    return GestureDetector(
      onTapDown: onTapDown,
      child: child,
    );
  }
}
