part of octane.views;

class OCTVLetterpressHomeView extends StatelessWidget {
  const OCTVLetterpressHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: OCTUDimensionTools.getWidth(context),
        height: OCTUDimensionTools.getHeight(context),
        color: OCTTColor.grey800,
        child: Center(
          child: SingleChildScrollView(
            child: SelectionArea(
              child: Column(
                children: [
                  OCTCFrame(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: OCTCComposite(children: [
                            OCTFHeroTitle(
                              content: "Letterpress",
                            ),
                          ]),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: OCTCComposite(
                            children: [
                              OCTFBodyPlain(content: "Welcome to my blog!"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  OCTCContinuousFrame(
                    frameTitle: "Recent Posts",
                    child: Center(
                      child: Column(
                        children: [
                          OCTCComposite(
                            children: [
                              OCTFBodyHyperlink(
                                content: "Turbocal",
                                url: Uri.https('github.com'),
                              ),
                            ],
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
      ),
    );
  }
}
