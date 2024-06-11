part of octane;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> with ViewportScaling {
  final PageController pageController = PageController();
  final List<Project> projects =
      OctaneStore.projects.where((p) => p.showcase != null).toList();
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
            Future.delayed(const Duration(seconds: 4), () async {
              shownFeatureGuidance = true;
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.of(context).pop();
                if (Multiplatform.currentPlatform != const MobilePlatform()) {
                  Future.delayed(
                      const Duration(milliseconds: 500),
                      () => pageController.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 1200),
                            curve: Curves.easeInOutQuart,
                          ));
                }
              });
              await showDialog(
                context: context,
                barrierColor: Colors.black.withOpacity(0.9),
                barrierDismissible: false,
                builder: (context) {
                  return Center(
                    child: DefaultTextStyle(
                      style: body1.apply(
                        const TextStyle(color: OctaneTheme.obsidianX150),
                      ),
                      child: const Text(
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
        controller: pageController,
        children: [
          ViewportSize(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (playingVideo)
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 20,
                      height: MediaQuery.of(context).size.height - 40,
                      child: VideoPlayer(playerController),
                    ),
                  if (!playingVideo) ...[
                    const SizedBox(height: 40),
                    Text(
                      'OBSIDIAN',
                      style: heroTitle.apply(
                        const TextStyle(color: OctaneTheme.obsidianA150),
                      ),
                    ),
                    SizedBox(
                      height: reciprocalResponsive(10),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "I'm a ",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: "UI/UX designer",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: ", ",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: "Flutter developer",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: ", and ",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w100,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: "cloud architect",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w500,
                              color: OctaneTheme.obsidianB050,
                            ),
                          ),
                          TextSpan(
                            text: ".",
                            style: TextStyle(
                              fontSize: Multiplatform.currentPlatform ==
                                      const DesktopPlatform()
                                  ? responsive(30)
                                  : responsive(16),
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
          if (Multiplatform.currentPlatform == const DesktopPlatform())
            ViewportSize(
              child: Center(
                child: ShowcaseWidget(projects: projects),
              ),
            ),
        ],
      ),
    );
  }
}
