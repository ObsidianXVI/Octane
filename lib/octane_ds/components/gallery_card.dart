part of octane;

class GalleryCard extends StatefulWidget {
  final Project project;

  const GalleryCard({
    required this.project,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => GalleryCardState();
}

class GalleryCardState extends State<GalleryCard>
    with CardStyling, HoverStyling, TypeScale {
  @override
  Widget build(BuildContext context) {
    return hoverRegion(
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: hovering ? OctaneTheme.obsidianD050 : OctaneTheme.obsidianD150,
          border: cardBorder,
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image(
                image: widget.project.thumbnail,
                fit: BoxFit.cover,
                opacity: const AlwaysStoppedAnimation(0.7),
              ),
            ),
            AnimatedPositioned(
              top: 0,
              left: 0,
              right: 0,
              height: hovering ? 400 : 84,
              duration: const Duration(milliseconds: 300),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      OctaneTheme.obsidianD100.withOpacity(0.2),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: backgroundBlur(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.project.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: heading4(color: OctaneTheme.obsidianB000),
                        ),
                        if (hovering) const SizedBox(height: 10),
                        if (hovering)
                          Text(
                            widget.project.shortDesc,
                            maxLines: 9,
                            overflow: TextOverflow.ellipsis,
                            style: body1(color: OctaneTheme.obsidianB000),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
