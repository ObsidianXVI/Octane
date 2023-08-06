part of octane.ds;

abstract class DependentSizeContainer extends StatelessWidget {
  final double widthScaleFactor;
  final double heightScaleFactor;
  final Widget child;
  final bool sizeUpChild;

  const DependentSizeContainer({
    required this.child,
    this.widthScaleFactor = 1,
    this.heightScaleFactor = 1,
    this.sizeUpChild = true,
    super.key,
  });
}
