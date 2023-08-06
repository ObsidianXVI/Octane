part of octane.views;

class ShowcaseView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DevViewState();
}

class ShowcaseViewState extends State<ShowcaseView> {
  int activeIndex = 0;
  final ScrollController controller1 = ScrollController();
  final ScrollController controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 900,
      child: Row(
        children: [
          LinkedScrollWheel(
            width: 800,
            height: 500,
            scrollController: controller1,
            refreshFn: (int itemNo, double offset) {
              setState(() {
                activeIndex = itemNo;
                controller1.jumpTo(offset);
              });
            },
            offAxisFraction: 0.3,
            children: List<ScrollCard>.generate(10, (int index) {
              return ScrollCard(
                width: 500,
                height: 200,
                child: Text('$index'),
              );
            }),
          ),
          const SizedBox(width: 50),
/*           LinkedScrollWheel(
            width: 500,
            height: 500,
            offAxisFraction: -0.3,
            scrollController: controller2,
            refreshFn: (int itemNo, double offset) {
              setState(() {
                activeIndex = itemNo;
                controller1.jumpTo(offset);
              });
            },
            children: List<ScrollCard>.generate(10, (int index) {
              return ScrollCard(
                width: 500,
                height: 200,
                child: Text('$index'),
              );
            }),
          ), */
        ],
      ),
    );
  }
}

class LinkedScrollWheel<T extends Widget> extends StatelessWidget {
  final ScrollController scrollController;
  final void Function(int itemNo, double offset) refreshFn;
  final List<T> children;
  final double width;
  final double height;
  final double offAxisFraction;

  LinkedScrollWheel({
    required this.refreshFn,
    required this.children,
    required this.width,
    required this.height,
    required this.scrollController,
    this.offAxisFraction = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 700,
      child: ListWheelScrollView(
        itemExtent: 300,
        offAxisFraction: offAxisFraction,
        controller: scrollController,
        onSelectedItemChanged: (int index) {
          refreshFn(index, scrollController.offset);
        },
        children: children,
      ),
    );
  }
}

class ScrollCard extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const ScrollCard({
    required this.width,
    required this.height,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: OctaneTheme.obsidian600,
        border: Border.all(color: OctaneTheme.obsidian400),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
