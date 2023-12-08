part of octane;

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
      child: HotboxArea(
        hotbox: (_) => const GenericHotbox(
          width: 1200,
          height: 800,
        ),
        child: child,
      ),
    );
  }
}
