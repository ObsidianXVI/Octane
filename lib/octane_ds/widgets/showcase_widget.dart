part of octane.ds;

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
  final FocusNode focusNode = FocusNode();

  ScrollPhysics scrollPhysics = const NeverScrollableScrollPhysics();

  Project get currentProj => widget.projects[currentProjIndex];
  Showcase get showcase => currentProj.showcase!;

  @override
  void initState() {
    standardisedDuration = const Duration(seconds: 2);
    standardisedCurve = Curves.easeInOutCubic;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('showcase_widget'),
      onVisibilityChanged: ((VisibilityInfo info) {
        if (info.visibleFraction == 1) {
          setState(() {
            projectShowcaseInView = true;
            scrollPhysics = const PageScrollPhysics();
          });
        } else {
          setState(() {
            scrollPhysics = const NeverScrollableScrollPhysics();
            projectShowcaseInView = false;
          });
        }
      }),
      child: ParentSize(
        decoration: BoxDecoration(
          /* gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              currentProj.primary,
              OctaneTheme.obsidianD150,
            ],
            stops: const [0.5, 1],
          ), */
          color: currentProj.primary,
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
                child: PageView(
                  clipBehavior: Clip.none,
                  physics: scrollPhysics,
                  controller: controller1,
                  onPageChanged: controller1Callback,
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    showcase.images.length,
                    (i) => Align(
                      alignment: Alignment.center,
                      child: ShowcaseImageCard(
                        assetImage: showcase.images[i],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 50,
              bottom: 0,
              width: 400,
              child: ParentSize(
                child: PageView(
                  clipBehavior: Clip.none,
                  physics: scrollPhysics,
                  controller: controller2,
                  onPageChanged: controller2Callback,
                  scrollDirection: Axis.vertical,
                  children: List<Widget>.generate(
                    showcase.headers.length,
                    (i) => Align(
                      alignment: Alignment.center,
                      child: ShowcaseTextCard(
                        header: showcase.headers[i],
                        desc: showcase.descriptions[i],
                      ),
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
}
