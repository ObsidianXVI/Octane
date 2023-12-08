part of octane;

class GenericHotbox extends Hotbox<void> {
  static const double unit = 40;

  const GenericHotbox({
    required super.width,
    required super.height,
    super.key,
  }) : super(
          hotboxData: const HotboxData.none(),
          style: const HotboxStyle(
            backgroundColor: Colors.transparent,
            pieColor: OctaneTheme.purple800,
          ),
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
