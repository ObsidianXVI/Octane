part of octane.ds;

class OctaneCard extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;

  const OctaneCard({
    required this.width,
    required this.height,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
      ),
    );
  }
}
