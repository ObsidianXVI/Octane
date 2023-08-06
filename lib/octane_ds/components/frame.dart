part of octane.ds;

class FrameContainer extends StatelessWidget {
  final Widget child;
  final String? frameTitle;

  const FrameContainer({
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
                child: child,
              ),
          ],
        ),
      ),
    );
  }
}

class ContinuousFrame extends StatelessWidget {
  final Widget child;
  final String? frameTitle;

  const ContinuousFrame({
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
