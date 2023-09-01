part of octane.ds;

class ParentDependent extends DependentSizeContainer {
  const ParentDependent({
    required super.child,
    super.heightScaleFactor,
    super.widthScaleFactor,
    super.alignment,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Align(
        alignment: alignment,
        child: Container(
          width: constraints.constrainWidth((constraints.hasBoundedWidth
                  ? constraints.maxWidth
                  : OCTUDimensionTools.getWidth(context)) *
              widthScaleFactor),
          height: constraints.constrainHeight((constraints.hasBoundedHeight
                  ? constraints.maxHeight
                  : OCTUDimensionTools.getHeight(context)) *
              heightScaleFactor),
          child: child,
        ),
      );
    });
  }
}
