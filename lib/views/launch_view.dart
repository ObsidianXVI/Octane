part of octane.views;

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});
  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: Center(
        child: Container(
          width: OCTUDimensionTools.getWidth(context),
          height: OCTUDimensionTools.getHeight(context),
          color: OctaneTheme.obsidianD150,
          child:const Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "OBSiDIAN",
                    style: OctaneFont.heroTitle(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
