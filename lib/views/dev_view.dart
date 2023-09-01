part of octane.views;

class DevView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DevViewState();
}

class DevViewState extends State<DevView> {
  int activeIndex = 0;
  final ScrollController controller1 = ScrollController();
  final ScrollController controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportDependent(
        child: ParentDependent(
          widthScaleFactor: 0.9,
          heightScaleFactor: 0.95,
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              //SearchBox(),
            ],
          ),
        ),
      ),
    );
  }
}
