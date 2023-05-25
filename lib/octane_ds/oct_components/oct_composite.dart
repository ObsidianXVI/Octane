part of octane.ds;

class OCTCComposite extends StatelessWidget {
  final List<OCTFComponent> children;

  const OCTCComposite({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      selectionRegistrar: SelectionContainer.maybeOf(context),
      selectionColor: OCTTColor.grey200,
      text: TextSpan(
        children: children.map((e) => e.render(context)).toList(),
      ),
    );
  }
}
