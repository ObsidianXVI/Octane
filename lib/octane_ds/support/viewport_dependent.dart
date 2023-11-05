part of octane.ds;

class ViewportDependent extends DependentSizeContainer {
  const ViewportDependent({
    required super.child,
    super.widthScaleFactor,
    super.heightScaleFactor,
    super.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        width: OCTUDimensionTools.getWidth(context) * widthScaleFactor,
        height: OCTUDimensionTools.getHeight(context) * heightScaleFactor,
        child: child,
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
