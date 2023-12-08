part of octane;

class GalleryView extends StatelessWidget {
  final List<Project> projects;

  const GalleryView({
    required this.projects,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportSize(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [for (final p in projects) GalleryCard(project: p)],
          ),
        ),
      ),
    );
  }
}
