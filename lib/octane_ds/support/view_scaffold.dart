part of octane.ds;

class ViewScaffold extends StatelessWidget {
  final FocusNode focusNode;
  final Widget child;

  ViewScaffold({
    required this.child,
    FocusNode? focusNode,
    super.key,
  }) : focusNode = focusNode ?? FocusNode();

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
