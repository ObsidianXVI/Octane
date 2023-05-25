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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                OCTCFrame(
                  child: Center(
                    child: OCTCComposite(children: [
                      OCTFHeroTitle(
                        content: "OBSiDIAN",
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
