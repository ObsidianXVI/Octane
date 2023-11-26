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
  late final imgTimer = Stream.periodic(const Duration(seconds: 4));
  late final StreamSubscription imgTimerSub;

  int currentImgIndex = 0;

  @override
  void initState() {
    imgTimerSub = imgTimer.listen((_) {
      setState(() {
        if (currentImgIndex + 1 == widget.project.allAssets.length) {
          currentImgIndex = 0;
        } else {
          currentImgIndex += 1;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return hoverRegion(
      onEnter: (_) => imgTimerSub.resume(),
      onExit: (_) => imgTimerSub.pause(),
      child: Container(
        height: 400,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: hovering ? OctaneTheme.obsidianD050 : OctaneTheme.obsidianD150,
          border: cardBorder,
        ),
        child: Stack(
          children: [
            hovering
                ? Positioned.fill(
                    child: Image(
                      image: widget.project.allAssets[currentImgIndex],
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.7),
                    ),
                  )
                : Positioned.fill(
                    child: Image(
                      image: widget.project.thumbnail,
                      fit: BoxFit.cover,
                      opacity: const AlwaysStoppedAnimation(0.7),
                    ),
                  ),
            Positioned.fill(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: const [
                      OctaneTheme.obsidianD050,
                      Colors.transparent,
                    ],
                    stops: [hovering ? 0 : 0.5, 1],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              child: Text(
                widget.project.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: heading4(color: OctaneTheme.obsidianB000),
              ),
            ),
            if (!hovering)
              Positioned(
                top: 70,
                left: 20,
                right: 20,
                child: Text(
                  widget.project.shortDesc,
                  maxLines: 9,
                  overflow: TextOverflow.ellipsis,
                  style: body1(color: OctaneTheme.obsidianB100),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    imgTimerSub.cancel();
    super.dispose();
  }
}
