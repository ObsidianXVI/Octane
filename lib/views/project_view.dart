part of octane;

class ProjectView extends StatelessWidget with TypeScale {
  final Project project;

  const ProjectView({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: ViewportSize(
        child: SelectionArea(
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
                          image: project.allAssets[project.thumbnail]!,
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
                const SizedBox(width: 100),
                SizedBox(
                  height: 800,
                  width: 900,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: heading1(color: OctaneTheme.obsidianA150),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          project.about,
                          style: body1(color: OctaneTheme.obsidianB000),
                        ),
                        const SizedBox(height: 60),
                        Text(
                          'Product',
                          style: heading1(color: OctaneTheme.obsidianA150),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          project.product.join('\n'),
                          style: body1(color: OctaneTheme.obsidianB000),
                        ),
                        const SizedBox(height: 60),
                        Text(
                          'Process',
                          style: heading1(color: OctaneTheme.obsidianA150),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          project.process.join('\n'),
                          style: body1(color: OctaneTheme.obsidianB000),
                        ),
                        const SizedBox(height: 60),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '∆',
                                style: heading1(
                                  color: OctaneTheme.obsidianA150,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              TextSpan(
                                text: ' Skills',
                                style:
                                    heading1(color: OctaneTheme.obsidianA150),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          project.delta.join('\n'),
                          style: body1(color: OctaneTheme.obsidianB000),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
