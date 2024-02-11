part of octane;

class HomeView extends StatelessWidget {
  final List<Project> projects;

  const HomeView({
    required this.projects,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ViewportSize(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'OBSIDIAN',
                      style: TextStyle(
                        fontSize: 190,
                        fontFamily: 'Fraunces_Standard',
                        fontWeight: FontWeight.w900,
                        color: OctaneTheme.obsidianA150,
                      ),
                    ),
                    const SizedBox(),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "I'm a ",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: "UI/UX designer",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: ", ",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: "Flutter developer",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: ", and ",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: "cloud architect",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: ".",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ViewportSize(
              child: Center(
                child: ShowcaseWidget(projects: projects),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
