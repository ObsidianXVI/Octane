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
      child: SizedBox(
        width: 1200,
        height: 900,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: Column(
            children: [
              const SizedBox(width: 50),
              SearchBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 200,
        decoration: BoxDecoration(),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
