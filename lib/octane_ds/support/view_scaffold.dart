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
                return Center(
                  child: SizedBox(
                    width: 300,
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (final entry in OctaneRoutes.directRoutes.entries)
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .popAndPushNamed(entry.value),
                            child: Text(entry.key),
                          ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
        child: child,
      ),
    );
  }
}
