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

class OctaneTextButtonState extends State<OctaneTextButton> {
  Color fillColor = Colors.transparent;
  Color textColor = OctaneTheme.obsidianX100;
/*   @override
  void initState() {
    borderTintColor = OctaneTheme.obsidianX100;
    super.initState();
  } */

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onExit: (_) {
        setState(() {
          fillColor = Colors.transparent;
          textColor = OctaneTheme.obsidianX100;
        });
      },
      onEnter: (event) {
        setState(() {
          fillColor = OctaneTheme.obsidianX000.withOpacity(0.6);
        });
      },
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            fillColor = OctaneTheme.obsidianX150;
            textColor = OctaneTheme.obsidianA000;
          });
        },
        onTapUp: (_) {
          setState(() {
            fillColor = OctaneTheme.obsidianX000.withOpacity(0.6);
            textColor = textColor = OctaneTheme.obsidianX100;
          });
          widget.callback();
        },
        child: MouseRegion(
          child: Container(
            decoration: BoxDecoration(
              color: fillColor,
              border: Border.all(color: OctaneTheme.obsidianX100),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.label,
                style: button1.apply(
                  TextStyle(color: textColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
