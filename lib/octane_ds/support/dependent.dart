part of octane.ds;

abstract class DependentSizeContainer extends StatelessWidget {
  final AlignmentGeometry alignment;
  final double widthScaleFactor;
  final double heightScaleFactor;
  final Widget child;

  const DependentSizeContainer({
    required this.child,
    this.widthScaleFactor = 1,
    this.heightScaleFactor = 1,
    this.alignment = Alignment.center,
    super.key,
  });
}
