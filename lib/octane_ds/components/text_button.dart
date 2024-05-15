part of octane.ds;

class OctaneTextButton extends StatefulWidget {
  final String label;
  final void Function() callback;

  const OctaneTextButton({
    required this.label,
    required this.callback,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => OctaneTextButtonState();
}

class OctaneTextButtonState extends State<OctaneTextButton>
    with CardStyling, HoverStyling, TypeScale {
  @override
  void initState() {
    begin = Alignment.centerLeft;
    end = Alignment.centerRight;
    borderTintColor = OctaneTheme.obsidianX100;
    fillColor = OctaneTheme.obsidianX050;
    endStop = 1.2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapDown: (_) {
          fillColor = OctaneTheme.obsidianX150;
        },
        onTapUp: (_) {
          widget.callback();
          fillColor = OctaneTheme.obsidianX050;
        },
        child: hoverRegion(
          child: hoverTransitionContainer(
            decoration: BoxDecoration(
              gradient: cardBackground,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.label,
                style: button1(color: OctaneTheme.obsidianA000),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
