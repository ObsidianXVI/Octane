part of octane.ds;

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ParentDependent(
        widthScaleFactor: 0.9,
        heightScaleFactor: 0.05,
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
