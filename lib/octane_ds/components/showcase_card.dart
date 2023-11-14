part of octane;

class ShowcaseTextCard extends StatefulWidget {
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
    return cardBorder(
      child: Container(
        height: 500,
        color: OctaneTheme.obsidianD150.withOpacity(0.3),
        child: backgroundBlur(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
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
            ],
          ),
        ),
      ),
    );
  }
}
