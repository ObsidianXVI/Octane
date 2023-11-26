part of octane;

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

class ShowcaseTextCardState extends State<ShowcaseTextCard>
    with CardStyling, TypeScale {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: OctaneTheme.obsidianD150.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [widget.showcaseCardShadow],
      ),
      child: Stack(
        children: [
          backgroundBlur(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.header,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: heading4(color: OctaneTheme.obsidianB000),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.desc,
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                    style: body1(color: OctaneTheme.obsidianB000),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: cardBorder,
              borderRadius: BorderRadius.circular(5),
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
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [showcaseCardShadow],
            ),
            child: Image(image: assetImage),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
