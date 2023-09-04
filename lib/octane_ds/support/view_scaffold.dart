part of octane.ds;

class ViewScaffold extends StatelessWidget {
  final Widget child;
  const ViewScaffold({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: OctaneTheme.obsidianD150,
      child: SelectionArea(child: child),
    );
  }
}
