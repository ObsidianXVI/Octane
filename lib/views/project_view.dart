part of octane;

class ProjectView extends StatelessWidget with TypeScale {
  final Project project;

  const ProjectView({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: OctaneTheme.obsidianD150,
      child: ViewportSize(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 210,
                      height: 210,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image(
                        image: project.thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      project.name.replaceAll(' ', '\n'),
                      style: heading3(color: OctaneTheme.obsidianB100),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      project.shortDesc,
                      style: body1(color: OctaneTheme.obsidianB150),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 130),
            ],
          ),
        ),
      ),
    );
  }
}
