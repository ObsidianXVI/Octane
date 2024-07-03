part of octane.ds;

class ExpandableCard extends StatefulWidget {
  final String header;
  final String content;
  final bool leftAlign;
  final double desktopAllowedWidth;

  const ExpandableCard({
    required this.header,
    required this.content,
    required this.desktopAllowedWidth,
    this.leftAlign = true,
    super.key,
  });
  @override
  State<StatefulWidget> createState() => ExpandableCardState();
}

class ExpandableCardState extends State<ExpandableCard>
    with ViewportScaling, CardStyling, HoverStyling, Clickable {
  @override
  Widget build(BuildContext context) {
    if (Multiplatform.currentPlatform == const DesktopPlatform()) {
      return buildDesktop(context);
    } else {
      return buildMobile(context);
    }
  }

  Widget buildDesktop(BuildContext context) {
    return SizedBox(
      width: widget.desktopAllowedWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: widget.leftAlign
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          Text(
            widget.header,
            textAlign: widget.leftAlign ? TextAlign.left : TextAlign.right,
            style: heading1.apply(
              const TextStyle(color: OctaneTheme.obsidianA150),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            widget.content,
            textAlign: widget.leftAlign ? TextAlign.left : TextAlign.right,
            style: body1.apply(
              TextStyle(color: OctaneTheme.obsidianB050.withOpacity(0.8)),
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 34,
          ),
        ],
      ),
    );
  }

  Widget buildMobile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
      child: Align(
          alignment: Alignment.topCenter,
          child: hoverRegion(
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (ctx) {
                    return Center(
                      child: Container(
                        width: Dimensions.width() - 16,
                        height: Dimensions.height() * 0.8,
                        decoration: BoxDecoration(
                          color: OctaneTheme.obsidianC100,
                          border: cardBorder,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                Text(
                                  widget.content,
                                  style: body1.apply(
                                    TextStyle(
                                        color: OctaneTheme.obsidianB050
                                            .withOpacity(0.8)),
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              width: Dimensions.width() - 16,
              height: Dimensions.height() * 0.2,
              decoration: BoxDecoration(
                color: cardBackground,
                border: cardBorder,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 4,
                    left: 6,
                    right: 6,
                    child: Text(
                      widget.header.toUpperCase(),
                      style: body1.apply(
                        const TextStyle(
                          color: OctaneTheme.obsidianB150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 28,
                    left: 6,
                    right: 6,
                    child: Text(
                      widget.content,
                      style: body1.apply(
                        TextStyle(
                            color: OctaneTheme.obsidianB050.withOpacity(0.8)),
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    left: 6,
                    right: 6,
                    child: Text(
                      'TAP TO READ MORE',
                      textAlign: TextAlign.right,
                      style: body1.apply(
                        TextStyle(
                          color: OctaneTheme.obsidianB100,
                          fontSize: scaled(16, 14),
                          fontWeight: FontWeight.w500,
                          height: scaled(1.2, 1.1),
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
