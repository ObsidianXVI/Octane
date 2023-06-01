part of octane.letterpress.ds;

class LPText extends StatelessWidget {
  final String content;
  final LPFont lpFont;

  const LPText({
    required this.content,
    required this.lpFont,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: lpFont.textStyle,
    );
  }
}

class LPTextSpan extends LPPostComponent {
  final List<LPText> lpTextComponents;

  LPTextSpan({
    required this.lpTextComponents,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: List<TextSpan>.generate(
          lpTextComponents.length,
          (int i) => TextSpan(
            text: lpTextComponents[i].content,
            style: lpTextComponents[i].lpFont.textStyle,
          ),
        ),
      ),
    );
  }
}
