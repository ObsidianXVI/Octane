part of octane.views;

class OCTVLaunchView extends StatelessWidget {
  const OCTVLaunchView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: OCTUDimensionTools.getWidth(context),
        height: OCTUDimensionTools.getHeight(context),
        color: OCTTColor.grey800,
        child: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                OCTCFrame(
                  child: Center(
                    child: OCTCComposite(children: [
                      OCTFHeroTitle(
                        content: "OBSiDIAN",
                      ),
                    ]),
                  ),
                ),
                /* OCTCFrame(
                  child: Center(
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pushNamed('/letterpress/'),
                      child: child,
                    ),
                  ),
                ), */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
