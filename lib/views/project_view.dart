part of octane;

class ProjectView extends StatelessWidget with ViewportScaling {
  final Project project;

  const ProjectView({
    required this.project,
    super.key,
  });

  List<Widget> parseText(List<String> src) {
    final List<Widget> widgets = [];
    for (final ln in src) {
      if (ln.startsWith('@img{{')) {
        final String imgKey = ln.replaceAll('@img{{', '').replaceAll('}}', '');
        if (project.allAssets.containsKey(imgKey)) {
        } else {}
        widgets.add(
          Image(
            image: project.allAssets[imgKey]!,
          ),
        );
      } else if (ln.startsWith('@link{{')) {
        final List<String> chunks =
            ln.replaceAll('@link{{', '').replaceAll('}', '').split(',');
        widgets.add(
          GestureDetector(
            onTap: () => window.open(chunks[0], ''),
            child: Text(
              chunks[1],
              style: body1.apply(
                const TextStyle(
                  color: OctaneTheme.obsidianB000,
                  decoration: TextDecoration.underline,
                  decorationColor: OctaneTheme.obsidianB050,
                ),
              ),
            ),
          ),
        );
      } else {
        widgets.add(
          SelectableText(
            ln,
            style: body1.apply(
              TextStyle(color: OctaneTheme.obsidianB050.withOpacity(0.9)),
            ),
          ),
        );
      }
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: Multiplatform.currentPlatform == const DesktopPlatform()
          ? Padding(
              padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: responsive(300),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: responsive(210),
                          height: responsive(210),
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
                          style: heading3.apply(
                            const TextStyle(color: OctaneTheme.obsidianB100),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          project.shortDesc,
                          style: body1.apply(
                            const TextStyle(color: OctaneTheme.obsidianB100),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: responsive(100)),
                  SizedBox(
                    height: 800,
                    width: responsive(880),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: heading1.apply(
                              const TextStyle(color: OctaneTheme.obsidianA150),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...parseText(project.about),
                          const SizedBox(height: 60),
                          Text(
                            'Product',
                            style: heading1.apply(
                              const TextStyle(color: OctaneTheme.obsidianA150),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...parseText(project.product),
                          const SizedBox(height: 60),
                          Text(
                            'Process',
                            style: heading1.apply(
                              const TextStyle(color: OctaneTheme.obsidianA150),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...parseText(project.process),
                          const SizedBox(height: 60),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '∆',
                                  style: heading1.apply(
                                    const TextStyle(
                                      color: OctaneTheme.obsidianA150,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: ' Skills',
                                  style: heading1.apply(
                                    const TextStyle(
                                        color: OctaneTheme.obsidianA150),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...parseText(project.delta),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ViewportSize(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: responsive(210),
                            height: responsive(210),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image(
                              image: project.allAssets[project.thumbnail]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            project.name,
                            textAlign: TextAlign.center,
                            style: heading3.apply(
                              const TextStyle(color: OctaneTheme.obsidianB100),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            project.shortDesc,
                            textAlign: TextAlign.center,
                            style: body1.apply(
                              const TextStyle(color: OctaneTheme.obsidianB100),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'About',
                      style: heading1.apply(
                        const TextStyle(color: OctaneTheme.obsidianA150),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...parseText(project.about),
                    const SizedBox(height: 60),
                    Text(
                      'Product',
                      style: heading1.apply(
                        const TextStyle(color: OctaneTheme.obsidianA150),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...parseText(project.product),
                    const SizedBox(height: 60),
                    Text(
                      'Process',
                      style: heading1.apply(
                        const TextStyle(color: OctaneTheme.obsidianA150),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...parseText(project.process),
                    const SizedBox(height: 60),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '∆',
                            style: heading1.apply(
                              const TextStyle(
                                color: OctaneTheme.obsidianA150,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: ' Skills',
                            style: heading1.apply(
                              const TextStyle(color: OctaneTheme.obsidianA150),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...parseText(project.delta),
                  ],
                ),
              ),
            ),
    );
  }
}
