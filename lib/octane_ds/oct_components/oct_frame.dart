part of octane.ds;

class OCTCFrame extends StatelessWidget {
  final Widget child;
  final String? frameTitle;

  const OCTCFrame({
    required this.child,
    this.frameTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: OCTUDimensionTools.getWidth(context),
        height: OCTUDimensionTools.getHeight(context),
        child: Stack(
          children: [
            child,
            if (frameTitle != null)
              Positioned(
                top: 10,
                left: 30,
                child: OCTCComposite(
                  children: [
                    OCTFFrameTitle(content: frameTitle!),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class OCTCContinuousFrame extends StatelessWidget {
  final Widget child;
  final String? frameTitle;

  const OCTCContinuousFrame({
    required this.child,
    this.frameTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> headerWidgets = [];
    if (frameTitle != null) {
      headerWidgets.addAll([
        const SizedBox(height: 10),
        OCTCComposite(
          children: [
            OCTFFrameTitle(content: frameTitle!),
          ],
        ),
      ]);
    }
    return Center(
      child: Container(
        width: OCTUDimensionTools.getWidth(context),
        height: OCTUDimensionTools.getHeight(context),
        child: Column(
          children: [
            ...headerWidgets,
            child,
          ],
        ),
      ),
    );
  }
}
