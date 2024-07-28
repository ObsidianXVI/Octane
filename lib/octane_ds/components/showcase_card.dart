part of octane.ds;

class ShowcaseTextCard extends StatefulWidget with ShadowStyling {
  final String header;
  final String desc;

  const ShowcaseTextCard({
    required this.header,
    required this.desc,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => ShowcaseTextCardState();
}

class ShowcaseTextCardState extends State<ShowcaseTextCard> with CardStyling {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: cardBorder,
        borderRadius: cardRadius,
        boxShadow: [widget.showcaseCardShadow],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.header,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: heading4.apply(
                    const TextStyle(color: OctaneTheme.obsidianB050),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.desc,
                  maxLines: 9,
                  overflow: TextOverflow.ellipsis,
                  style: body1.apply(
                    TextStyle(color: OctaneTheme.obsidianB050.withOpacity(0.8)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShowcaseImageCard extends StatelessWidget with ShadowStyling {
  final AssetImage assetImage;

  const ShowcaseImageCard({
    required this.assetImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: 970,
      child: Column(
        children: [
          const Spacer(),
          Container(
            height: 700,
            width: 970,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [showcaseCardShadow],
            ),
            child: Image(
              image: assetImage,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
