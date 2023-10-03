part of octane.views;

class DevView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DevViewState();
}

class DevViewState extends State<DevView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportDependent(
        child: ShowcaseItem(
          project: OctaneStore.projects.first,
          showcaseItem: OctaneStore.projects.first.showcase!,
        ),
      ),
    );
  }
}
