part of octane.ds;

class ViewScaffold extends StatelessWidget {
  final Widget child;
  final bool scrollable;

  const ViewScaffold({
    required this.child,
    this.scrollable = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: OctaneTheme.obsidianD150,
      child: scrollable ? SingleChildScrollView(child: child) : child,
      // Temporarily refrain from using SelectionArea because it causes the
      // !debugNeedsLayout is not true
      // bug
    );
  }
}
