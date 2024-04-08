part of octane;

class ViewScaffold extends StatelessWidget {
  final FocusNode focusNode = FocusNode();
  final Widget child;

  ViewScaffold({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: OctaneTheme.obsidianD150,
      child: KeyboardListener(
        focusNode: focusNode,
        autofocus: true,
        onKeyEvent: (KeyEvent event) async {
          if (event.logicalKey == LogicalKeyboardKey.space) {
            await showDialog(
              context: context,
              barrierColor: Colors.black.withOpacity(0.9),
              builder: (context) {
                return currentHotbox;
              },
            );
          }
        },
        child: child,
      ),
    );
  }
}
