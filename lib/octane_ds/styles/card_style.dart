part of octane.ds;

mixin CardStyling {
  bool hovering = false;
  bool pressing = false;

  BorderRadius get cardRadius => BorderRadius.circular(5);

  BoxBorder get cardBorder {
    return Border.all(
      color: pressing
          ? OctaneTheme.obsidianX150.withOpacity(0.8)
          : OctaneTheme.obsidianB050.withOpacity(hovering ? 0.7 : 0.5),
      width: 0.5,
    );
  }

  Color get cardBackground =>
      OctaneTheme.obsidianD050.withOpacity(hovering ? 0.55 : 0.35);

  List<BoxShadow> get cardShadows => [
        BoxShadow(
          blurStyle: BlurStyle.outer,
          color: pressing
              ? OctaneTheme.obsidianX150.withOpacity(0.45)
              : OctaneTheme.obsidianD150.withOpacity(0.45),
          spreadRadius: 0,
          blurRadius: 16,
        ),
      ];

  Widget backgroundBlur({required Widget child}) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
        child: child,
      ),
    );
  }
}
