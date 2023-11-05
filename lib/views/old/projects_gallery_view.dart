part of octane.views;

class ProjectsGalleryView extends StatefulWidget {
  const ProjectsGalleryView({
    super.key,
  });
  @override
  State<StatefulWidget> createState() => ProjectsGalleryViewState();
}

class ProjectsGalleryViewState extends State<ProjectsGalleryView> {
  final List<OctaneProject> projectsShown = OctaneStore.projects.toList();

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportDependent(
        widthScaleFactor: 0.7,
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 40),
              SearchBox(
                onChanged: (String value) {
                  setState(() {
                    if (value == '') {
                      projectsShown
                        ..clear()
                        ..addAll(OctaneStore.projects);
                    } else {
                      projectsShown
                        ..clear()
                        ..addAll(
                          OctaneStore.projects
                              .where((OctaneProject p) => p.name
                                  .toLowerCase()
                                  .contains(value.toLowerCase()))
                              .toList(),
                        );
                    }
                  });
                },
              ),
              const SizedBox(height: 40),
              ParentDependent(
                heightScaleFactor: 0.75,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 25,
                    children:
                        List<Widget>.generate(projectsShown.length, (int i) {
                      final OctaneProject project = projectsShown[i];
                      return ProjectGalleryCard(project: project);
                    }),
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

class ProjectGalleryCard extends StatefulWidget {
  final OctaneProject project;

  const ProjectGalleryCard({
    required this.project,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ProjectGalleryCardState();
}

class ProjectGalleryCardState extends State<ProjectGalleryCard> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        hovering = true;
      }),
      onExit: (_) => setState(() {
        hovering = false;
      }),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Image(
              width: double.infinity,
              height: double.infinity,
              image: widget.project.thumbnail,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: hovering ? OctaneTheme.obsidianC100 : null,
                  gradient: hovering
                      ? null
                      : LinearGradient(
                          begin: FractionalOffset.bottomCenter,
                          end: FractionalOffset.center,
                          colors: [
                            OctaneTheme.obsidianD150,
                            OctaneTheme.obsidianD150.withOpacity(0.7),
                            OctaneTheme.obsidianD150.withOpacity(0.2),
                          ],
                          stops: const [0, 0.6, 0.9],
                        ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                widget.project.name,
                style: const TextStyle(
                  fontSize: 20,
                  color: OctaneTheme.obsidianA100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
