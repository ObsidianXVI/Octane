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
    with CardStyling, HoverStyling, TypeScale, Clickable {
  late final PausableTimer imgTimer;
  bool slideshowPlaying = false;

  int currentImgIndex = 0;

  @override
  void initState() {
    imgTimer = PausableTimer(
      interval: const Duration(seconds: 3),
      callback: () {
        if (mounted) {
          setState(() {
            if (currentImgIndex + 1 >= widget.project.allAssets.length) {
              currentImgIndex = 0;
            } else {
              currentImgIndex += 1;
            }
          });
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return hoverRegion(
      onEnter: (_) {
        Future.delayed(const Duration(seconds: 1), () {
          if (hovering) {
            imgTimer.resume();
            setState(() {
              slideshowPlaying = true;
            });
          }
        });
      },
      onExit: (_) {
        imgTimer.pause();
        setState(() {
          slideshowPlaying = false;
        });
      },
      onTap: () => Navigator.of(context)
          .pushNamed(projectViewingSlugFor(widget.project)),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: hovering ? OctaneTheme.obsidianD050 : OctaneTheme.obsidianD150,
          border: cardBorder,
        ),
        child: Stack(
          children: [
            slideshowPlaying
                ? Positioned.fill(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      switchInCurve: Curves.easeOutCubic,
                      switchOutCurve: Curves.easeInCubic,
                      child: Image(
                        key: ValueKey<int>(currentImgIndex),
                        image: widget.project.allAssets.values
                            .elementAt(currentImgIndex),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : const SizedBox(),
            if (!slideshowPlaying)
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        OctaneTheme.obsidianD050,
                        OctaneTheme.obsidianD050.withOpacity(0.8),
                        OctaneTheme.obsidianD050.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      stops: const [0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
              ),
            if (!slideshowPlaying)
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
            if (!slideshowPlaying)
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
    imgTimer.cancel();
    super.dispose();
  }
}
