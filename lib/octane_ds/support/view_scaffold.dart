part of octane.ds;

int currentProjIndex = 0;
int currentPairIndex = 0;

class ViewScaffold extends StatefulWidget {
  final FocusNode focusNode;
  final Widget child;

  ViewScaffold({
    required this.child,
    FocusNode? focusNode,
    super.key,
  }) : focusNode = focusNode ?? FocusNode();

  @override
  State<StatefulWidget> createState() => ViewScaffoldState();
}

class ViewScaffoldState extends State<ViewScaffold> {
  final List<Project> projects =
      OctaneStore.projects.where((p) => p.showcase != null).toList();
  ScrollPhysics scrollPhysics = const NeverScrollableScrollPhysics();

  Project get currentProj => projects[currentProjIndex];
  Showcase get showcase => currentProj.showcase!;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: OctaneTheme.obsidianD150,
      child: GestureDetector(
        onLongPress: () async => await showHotboxDialog(context),
        child: KeyboardListener(
          focusNode: widget.focusNode,
          autofocus: true,
          onKeyEvent: (KeyEvent event) async {
            if (event.logicalKey == LogicalKeyboardKey.space) {
              await showHotboxDialog(context);
            }
          },
          child: widget.child,
        ),
      ),
    );
  }

  Future<void> showHotboxDialog(BuildContext context) async => await showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.7),
        barrierDismissible: true,
        builder: (context) => projectShowcaseInView
            ? OctaneNavigationShowcaseHotbox(
                options: [
                  for (final p in OctaneStore.projects
                      .where((p) => p.showcase != null)
                      .toList())
                    p.name
                ],
                currentOption: currentProjIndex,
                callback: (int newIndex) {
                  setState(() {
                    currentProjIndex = newIndex;
                    barColorStreamController.add(currentProj.accent);
                  });
                },
              )
            : OctaneHotbox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                showReleaseToClickLine: true,
                hotboxData: HotboxData.none(),
              ),
      );
}
