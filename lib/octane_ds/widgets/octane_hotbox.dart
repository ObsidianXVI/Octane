part of octane.ds;

/* class GenericHotbox extends Hotbox<void> {
  static const double unit = 40;

  const GenericHotbox({
    required super.width,
    required super.height,
    super.key,
  }) : super(
          hotboxData: const HotboxData.none(),
        );

  @override
  Widget build(BuildContext context) {
    final double blockWidth = (width / 2) - 2 * unit;
    final double blockHeight = (height / 2) + unit;
    return Center(
      child: Container(
        width: width,
        height: height,
        color: Colors.amber,
        child: Stack(
          children: [
            Positioned(
              top: unit,
              width: blockWidth,
              left: (width - blockWidth) / 2,
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text('No content to query.'),
              ),
            ),
            Positioned(
              top: (height - blockHeight) / 2,
              right: unit,
              width: blockWidth,
              height: blockHeight,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .popAndPushNamed(OctaneRoutes.home),
                        child: const Text('Home'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .popAndPushNamed(OctaneRoutes.gallery),
                        child: const Text('Gallery'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context)
                            .popAndPushNamed(OctaneRoutes.about),
                        child: const Text('About Me'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context)
                          ..pop()
                          ..maybePop(),
                        child: const Text('Back'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 */
class OctaneNavigationHotbox extends StatelessWidget {
  const OctaneNavigationHotbox({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DefaultTextStyle(
              style: TextStyle(color: OctaneTheme.obsidianA150),
              child: Text("NAVIGATION"),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 570,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (final entry in OctaneRoutes.directRoutes.entries) ...[
                    OctaneTextButton(
                      label: entry.key,
                      callback: () =>
                          Navigator.of(context).popAndPushNamed(entry.value),
                    ),
                    const SizedBox(width: 20),
                  ]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OctaneNavigationShowcaseHotbox extends StatelessWidget {
  final List<String> options;
  final int currentOption;
  final void Function(int) callback;

  const OctaneNavigationShowcaseHotbox({
    required this.options,
    required this.currentOption,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DefaultTextStyle(
            style: TextStyle(color: OctaneTheme.obsidianA150),
            child: Text("NAVIGATION"),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 300,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (final entry in OctaneRoutes.directRoutes.entries)
                  TextButton(
                    onPressed: () =>
                        Navigator.of(context).popAndPushNamed(entry.value),
                    child: Text(
                      entry.key,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const DefaultTextStyle(
            style: TextStyle(color: OctaneTheme.obsidianA150),
            child: Text("SWITCH PROJECTS"),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 700,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<TextButton>.generate(
                options.length,
                (i) => TextButton(
                  onPressed: () => callback(i),
                  child: Text(
                    options[i],
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OctaneHotbox extends LighthouseStyledHotbox<void> {
  OctaneHotbox({
    required super.width,
    required super.height,
    required super.showReleaseToClickLine,
    required super.hotboxData,
    super.key,
  }) : super(
          overlayBackgroundColor: OctaneTheme.obsidianD150.withOpacity(0.2),
          piePrimaryColor: OctaneTheme.obsidianB150,
          pieAccentColor: OctaneTheme.obsidianB000,
          releaseToClickLineColor: OctaneTheme.obsidianX150,
        );
  @override
  OctaneHotboxState createState() => OctaneHotboxState();
}

class OctaneHotboxState extends LighthouseStyledHotboxState<void> {
  @override
  Widget rightSector(BuildContext context) => Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.vertical,
        spacing: 20,
        children: [
          TextButton(
            onPressed: () =>
                Navigator.of(context).popAndPushNamed(OctaneRoutes.home),
            child: Text(
              'Home',
              style: button1
                  .apply(const TextStyle(color: OctaneTheme.obsidianA000)),
            ),
          ),
          TextButton(
            onPressed: () =>
                Navigator.of(context).popAndPushNamed(OctaneRoutes.gallery),
            child: Text(
              'Gallery',
              style: button1
                  .apply(const TextStyle(color: OctaneTheme.obsidianA000)),
            ),
          ),
          TextButton(
            onPressed: () =>
                Navigator.of(context).popAndPushNamed(OctaneRoutes.about),
            child: Text(
              'About Me',
              style: button1
                  .apply(const TextStyle(color: OctaneTheme.obsidianA000)),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context)
                .popAndPushNamed(OctaneRoutes.professional),
            child: Text(
              'Professional',
              style: button1
                  .apply(const TextStyle(color: OctaneTheme.obsidianA000)),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context)
              ..pop()
              ..maybePop(),
            child: Text(
              'Back',
              style: button1
                  .apply(const TextStyle(color: OctaneTheme.obsidianA000)),
            ),
          ),
        ],
      );

  @override
  Widget lowerSector(BuildContext context) {
    // TODO: implement lowerSector
    return super.lowerSector(context);
  }
}
