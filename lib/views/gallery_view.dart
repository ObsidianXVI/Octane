part of octane;

class GalleryView extends StatefulWidget {
  final List<Project> projects;

  const GalleryView({
    required this.projects,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => GalleryViewState();
}

class GalleryViewState extends State<GalleryView> {
  final PageController pageController = PageController();

  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 1),
        () => pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 1200),
              curve: Curves.easeInOutQuart,
            ));
    super.initState();
  }

  Widget buildBase(int gridColCount) => ViewScaffold(
        child: ViewportSnappingScrollView(
          controller: pageController,
          children: [
            ViewportSize(
              child: Center(
                child: Text(
                  'GALLERY',
                  style: pageTitle.apply(
                    const TextStyle(color: OctaneTheme.obsidianA150),
                  ),
                ),
              ),
            ),
            ViewportSize(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: GridView.count(
                  crossAxisCount: gridColCount,
                  childAspectRatio: 3 / 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    for (final p in widget.projects) GalleryCard(project: p)
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  @override
  Widget build(BuildContext context) {
    if (Multiplatform.currentPlatform == const DesktopPlatform()) {
      return buildBase(3);
    } else if (Multiplatform.currentPlatform == const MobilePlatform()) {
      return buildBase(1);
    } else {
      return buildBase(2);
    }
  }
}
