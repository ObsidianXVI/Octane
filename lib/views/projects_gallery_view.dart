part of octane.views;

class ProjectsGalleryView extends StatefulWidget {
  const ProjectsGalleryView({
    super.key,
  });
  @override
  State<StatefulWidget> createState() => ProjectsGalleryViewState();
}

class ProjectsGalleryViewState extends State<ProjectsGalleryView> {
  @override
  Widget build(BuildContext context) {
    return const ViewScaffold(
      child: ViewportDependent(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(height: 40),
              SearchBox(),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
