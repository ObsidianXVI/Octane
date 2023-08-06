part of octane.ds;

class ParentDependent extends DependentSizeContainer {
  const ParentDependent({
    required super.child,
    super.heightScaleFactor,
    super.widthScaleFactor,
    super.sizeUpChild,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Center(
        child: Container(
          width: constraints.maxWidth * widthScaleFactor,
          height: constraints.maxHeight * heightScaleFactor,
          child: sizeUpChild
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: child,
                )
              : child,
        ),
      );
    });
  }
}
