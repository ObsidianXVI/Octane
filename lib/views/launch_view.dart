part of octane.views;

class OctaneLaunchView extends StatelessWidget {
  final List<OctaneProject> octaneProjects;

  const OctaneLaunchView({
    required this.octaneProjects,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      scrollable: true,
      child: Column(
        children: [
          const ViewportDependent(
            child: Center(
              child: SizedBox(
                width: 1000,
                height: 300,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'OBSIDIAN',
                        style: TextStyle(
                          fontSize: 190,
                          fontFamily: 'Fraunces_Standard',
                          fontWeight: FontWeight.w900,
                          color: OctaneTheme.obsidianA150,
                        ),
                      ),
                      Text(
                        "I'm a UI/UX designer, Flutter developer, and cloud architect.",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Cairo',
                          color: OctaneTheme.obsidianB050,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          ProjectShowcaseView(octaneProjects: octaneProjects),
        ],
      ),
    );
  }
}

class ProjectShowcaseView extends StatefulWidget {
  final List<OctaneProject> octaneProjects;

  const ProjectShowcaseView({
    required this.octaneProjects,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ProjectShowcaseViewState();
}

class ProjectShowcaseViewState extends State<ProjectShowcaseView> {
  int showcaseItemIndex = 0;

  OctaneProject get currentProj => widget.octaneProjects[showcaseItemIndex];

  @override
  Widget build(BuildContext context) {
    return ViewportDependent(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: currentProj.primary,
          ),
          Positioned(
            top: 55,
            left: 0,
            width: OCTUDimensionTools.getWidth(context) + 50,
            height: OCTUDimensionTools.getHeight(context),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                currentProj.name,
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 265,
                  height: 0.76,
                  fontWeight: FontWeight.w800,
                  color: currentProj.accent.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}