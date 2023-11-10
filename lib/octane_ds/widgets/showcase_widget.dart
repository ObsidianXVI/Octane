part of octane;

class ShowcaseWidget extends StatefulWidget {
  final List<Project> projects;

  const ShowcaseWidget({
    required this.projects,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ShowcaseWidgetState();
}

class ShowcaseWidgetState extends State<ShowcaseWidget>
    with SynchronisedScrollLists {
  int currentProjIndex = 0;
  int currentPairIndex = 0;
  ScrollPhysics scrollPhysics = const NeverScrollableScrollPhysics();

  Project get currentProj => widget.projects[currentProjIndex];
  Showcase get showcase => currentProj.showcase!;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('showcase_widget'),
      onVisibilityChanged: ((VisibilityInfo info) {
        if (info.visibleFraction == 1) {
          setState(() {
            scrollPhysics = const PageScrollPhysics();
          });
        } else {
          setState(() {
            scrollPhysics = const NeverScrollableScrollPhysics();
          });
        }
      }),
      child: ParentSize(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              currentProj.primary,
              OctaneTheme.obsidianD150,
            ],
            stops: const [0.5, 1],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 0,
              child: Text(
                currentProj.name.brokenIntoLines,
                style: TextStyle(
                  fontSize: 265,
                  color: currentProj.accent.withOpacity(0.2),
                  height: 0.77,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Cairo',
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 50,
              bottom: 0,
              width: 900,
              child: ParentSize(
                decoration: BoxDecoration(color: Colors.red),
                child: PageView(
                  physics: scrollPhysics,
                  controller: controller1,
                  onPageChanged: controller1Callback,
                  scrollDirection: Axis.vertical,
                  children: currentProj.showcase!.images,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 50,
              bottom: 0,
              width: 400,
              child: ParentSize(
                decoration: BoxDecoration(color: Colors.amber),
                child: PageView(
                  physics: scrollPhysics,
                  controller: controller2,
                  onPageChanged: controller2Callback,
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    showcase.headers.length,
                    (i) => createCard(
                      showcase.headers[i],
                      showcase.descriptions[i],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createCard(String title, String desc) {
    return Container(
      width: 300,
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 40),
          Text(desc),
        ],
      ),
    );
  }
}
