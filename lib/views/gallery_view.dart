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

class GalleryViewState extends State<GalleryView> with TypeScale {
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

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportSnappingScrollView(
        controller: pageController,
        children: [
          ViewportSize(
            child: Center(
              child: Text(
                'GALLERY',
                style: pageTitle(
                  color: OctaneTheme.obsidianA150,
                ),
              ),
            ),
          ),
          ViewportSize(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: GridView.count(
                crossAxisCount: 3,
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
  }
}
