part of octane;

class AboutView extends StatelessWidget with TypeScale {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewScaffold(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 100,
            width: 600,
            height: 600,
            child: Image.asset(
              'images/avatar.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 40,
            right: 50,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 800,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 0.8,
                  colors: [
                    OctaneTheme.obsidianD050,
                    OctaneTheme.obsidianD050.withOpacity(0.8),
                    OctaneTheme.obsidianD050.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  stops: const [0, 0.2, 0.4, 1],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'About Me',
                    textAlign: TextAlign.right,
                    style: heading1(color: OctaneTheme.obsidianA150),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum consequat felis ut molestie. Suspendisse pellentesque, turpis non porttitor facilisis, lectus orci auctor justo, et maximus metus neque sit amet lectus. In pretium arcu vitae erat blandit pharetra. Sed quis nunc at dolor facilisis porta at in mi. Nam venenatis tempor erat sit amet imperdiet. Suspendisse viverra convallis nulla non dapibus. Nulla nec venenatis diam. Integer sodales efficitur ligula, nec viverra ex condimentum at. Aliquam varius nibh sit amet tortor auctor, eget vestibulum nibh finibus. Suspendisse vitae rutrum quam, non finibus dui. Aenean risus diam, aliquam vel felis sed, pulvinar fermentum elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam vel est arcu. Nunc ornare sed purus et auctor. Aliquam ac lorem risus. Phasellus euismod nec augue nec efficitur.

Integer cursus augue eu orci hendrerit pharetra. Vestibulum porttitor tempor auctor. Nulla et velit non elit mollis viverra. Sed tempor dui orci, eu laoreet nunc facilisis eu. Quisque ac enim sit amet sapien volutpat posuere. Sed placerat enim metus, sit amet egestas eros porta non. Suspendisse ut convallis felis, nec consectetur ligula. Nulla ultricies vulputate lorem in vulputate. Fusce consectetur nisl diam, ac consequat nisl hendrerit vitae. Cras venenatis, nulla sit amet mollis scelerisque, nulla sem convallis diam, et mattis lectus tellus sit amet mauris. Nullam sit amet sem a sapien iaculis finibus ut nec felis. In rhoncus elit venenatis erat lacinia finibus. Curabitur massa nisl, luctus at eleifend sed, ornare sed nunc. Nulla dolor lorem, condimentum at ullamcorper nec, tincidunt ut turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit.""",
                    textAlign: TextAlign.right,
                    style: body1(color: OctaneTheme.obsidianB000),
                  ),
                ],
              ), /* BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 0,
                  sigmaY: 0,
                ),
                child: 
              ), */
            ),
          ),
        ],
      ),
    );
  }
}
