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
            const ViewportSize(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    SizedBox(),
                    Text(
                      "I'm a UI/UX designer, Flutter developer, and cloud architect.",
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Cairo',
                        color: OctaneTheme.obsidianB050,
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
