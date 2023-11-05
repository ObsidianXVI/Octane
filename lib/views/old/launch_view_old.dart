part of octane.views;

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: Center(
        child: Container(
          width: OCTUDimensionTools.getWidth(context),
          height: OCTUDimensionTools.getHeight(context),
          color: OctaneTheme.obsidianD150,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ViewportDependent(
                    child: Center(
                      child: Stack(
                        children: [
                          const Center(
                            child: Text(
                              "OBSiDIAN",
                              style: OctaneFont.heroTitle(),
                            ),
                          ),
                          Image.asset(
                            'images/mustang_pic_edited.png',
                            width: 5000,
                            height: 1000,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ViewportDependent(
                    child: ShowcaseItem(
                      project: OctaneStore.projects.first,
                      showcaseItem: OctaneStore.projects.first.showcaseData!,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShowcaseItem extends StatefulWidget {
  final OctaneProject project;
  final ShowcaseData showcaseItem;

  const ShowcaseItem({
    required this.project,
    required this.showcaseItem,
    super.key,
  });
  @override
  State<StatefulWidget> createState() => _ShowcaseItemState();
}

class _ShowcaseItemState extends State<ShowcaseItem> {
  final FixedExtentScrollController controller1 = FixedExtentScrollController();
  final FixedExtentScrollController controller2 = FixedExtentScrollController();
  late final ScrollSynchroniser scrollSynchroniser;

  @override
  void initState() {
    scrollSynchroniser =
        ScrollSynchroniser(scrollControllers: [controller1, controller2]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.project.primary,
      child: Stack(
        children: [
          Positioned(
            left: -20,
            bottom: -80,
            child: Text(
              widget.project.name.splitMapJoin(' ', onMatch: (_) => '\n'),
              maxLines: 3,
              style: TextStyle(
                color: widget.project.accent.withOpacity(0.2),
                fontFamily: 'Cairo',
                fontSize: 320,
                fontWeight: FontWeight.w800,
                height: 0.75,
              ),
            ),
          ),
          // Left-side images
          Positioned(
            top: -40,
            left: 0,
            width: 960,
            height: 1000,
            child: Container(
              //color: Colors.amber,
              child: SynchronisedScrollWheel(
                synchroniser: scrollSynchroniser,
                scrollController: controller1,
                offAxisFraction: 0.8,
                itemHeight: 600,
                diameterRatio: 6,
                items: List<Widget>.generate(
                    widget.project.showcaseData!.images.length, (int i) {
                  final AssetImage assetImage =
                      widget.project.showcaseData!.images[i];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: OctaneTheme.obsidianB150),
                    ),
                    child: Image(
                      image: assetImage,
                      fit: BoxFit.cover,
                      width: 850,
                      height: 600,
                    ),
                  );
                }),
              ),
            ),
          ),
          // Right-side text
          Positioned(
            top: -40,
            right: 0,
            width: 490,
            height: 1000,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                //color: Colors.amber,
                child: SynchronisedScrollWheel(
                  synchroniser: scrollSynchroniser,
                  scrollController: controller2,
                  offAxisFraction: -0.8,
                  itemHeight: 400,
                  diameterRatio: 3.6,
                  items: List<Widget>.generate(
                      widget.project.showcaseData!.titles.length, (int i) {
                    final String title = widget.project.showcaseData!.titles[i];
                    final String desc =
                        widget.project.showcaseData!.descriptions[i];
                    return Container(
                      width: 450,
                      height: 400,
                      color: Colors.green,
                      child: Column(
                        children: [
                          Text(
                            title,
                          ),
                          Text(desc),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          // Overlay top
          Positioned.fill(
            bottom: 650,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.6),
                )
              ]),
              child: ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.0),
                      ],
                      stops: const [
                        0.0,
                        0.3,
                        1.0,
                      ],
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),

          // Overlay bottom
          Positioned.fill(
            top: 650,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.6),
                )
              ]),
              child: ClipRect(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.0),
                      ],
                      stops: const [
                        0.0,
                        0.3,
                        1.0,
                      ],
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollSynchroniser {
  final List<FixedExtentScrollController> scrollControllers;

  const ScrollSynchroniser({
    required this.scrollControllers,
  });

  Future<void> update(int newIndex,
      {Duration delay = const Duration(milliseconds: 800)}) async {
    await Future.delayed(delay, () {
      for (FixedExtentScrollController c in scrollControllers) {
        c.animateToItem(
          newIndex,
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeOut,
        );
      }
    });
  }
}

class SynchronisedScrollWheel<T extends Widget> extends StatefulWidget {
  final ScrollSynchroniser synchroniser;
  final ScrollController scrollController;
  final List<T> items;
  final double offAxisFraction;
  final double itemHeight;
  final double diameterRatio;

  const SynchronisedScrollWheel({
    required this.synchroniser,
    required this.scrollController,
    required this.itemHeight,
    required this.items,
    required this.offAxisFraction,
    required this.diameterRatio,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _SynchronisedScrollWheelState();
}

class _SynchronisedScrollWheelState extends State<SynchronisedScrollWheel> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      physics: const FixedExtentScrollPhysics(),
      controller: widget.scrollController,
      onSelectedItemChanged: (int newIndex) async {
        await widget.synchroniser.update(newIndex);
        setState(() {});
      },
      itemExtent: widget.itemHeight,
      offAxisFraction: widget.offAxisFraction,
      diameterRatio: widget.diameterRatio,
      children: widget.items,
    );
  }
}

class OctaneCard extends StatelessWidget {
  final String title;
  final String description;
  const OctaneCard({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: OctaneTheme.obsidianD150,
          border: Border.all(color: OctaneTheme.obsidianB100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: OctaneFontFamily.subheaders,
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: OctaneTheme.obsidianA000,
                    fontFamily: OctaneFontFamily.body,
                    fontWeight: FontWeight.w400,
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
