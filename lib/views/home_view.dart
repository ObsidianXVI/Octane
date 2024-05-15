part of octane;

class HomeView extends StatefulWidget {
  final List<Project> projects;

  const HomeView({
    required this.projects,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> with TypeScale {
  final FocusNode scaffoldFocusNode = FocusNode();
  bool playingVideo = true;
  final VideoPlayerController playerController =
      VideoPlayerController.asset('assets/animations/hero_animation.mp4');

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () async {
      await playerController.initialize();
      await playerController.play();
      playerController.addListener(() async {
        if (playerController.value.isCompleted) {
          scaffoldFocusNode.requestFocus();
          if (!shownFeatureGuidance) {
            Future.delayed(const Duration(seconds: 5), () async {
              shownFeatureGuidance = true;
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.of(context).pop();
              });
              await showDialog(
                context: context,
                barrierColor: Colors.black.withOpacity(0.9),
                barrierDismissible: false,
                builder: (context) {
                  return const Center(
                    child: DefaultTextStyle(
                      style: TextStyle(color: OctaneTheme.orange800),
                      child: Text(
                        "Press SPACE to access the navigation buttons",
                      ),
                    ),
                  );
                },
              );
            });
          }
          Future.delayed(
              const Duration(seconds: 1),
              () => setState(() {
                    playingVideo = false;
                  }));
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      focusNode: scaffoldFocusNode,
      child: ViewportSnappingScrollView(
        children: [
          ViewportSize(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (playingVideo)
                    SizedBox(
                      width: 1100,
                      height: 830,
                      child: VideoPlayer(playerController),
                    ),
                  if (!playingVideo) ...[
                    const SizedBox(height: 40),
                    Text(
                      'OBSIDIAN',
                      style: heroTitle(color: OctaneTheme.obsidianA150),
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
                ],
              ),
            ),
          ),
          ViewportSize(
            child: Center(
              child: ShowcaseWidget(projects: widget.projects),
            ),
          ),
        ],
      ),
    );
  }
}
