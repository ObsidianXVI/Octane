part of octane.letterpress.ds;

class LPText extends LPPostComponent {
  final String content;
  final LPFont lpFont;
  final bool isClickable;
  final Map<String, dynamic> props = {};

  LPText({
    required this.content,
    required this.lpFont,
    required this.isClickable,
    super.key,
  });

  LPText.header1({
    required this.content,
  })  : lpFont = LPFont.header1(),
        isClickable = false;

  LPText.header2({
    required this.content,
  })  : lpFont = LPFont.header2(),
        isClickable = false;

  LPText.header3({
    required this.content,
  })  : lpFont = LPFont.header3(),
        isClickable = false;

  LPText.plainBody({
    required this.content,
    bool isItalic = false,
  })  : lpFont = isItalic ? LPFont.bodyItalic() : LPFont.body(),
        isClickable = false;

  LPText.hyperlink({
    required this.content,
    required String url,
  })  : lpFont = LPFont.hyperlink(),
        isClickable = true {
    props.addAll({'url': url});
  }

  LPText.paragraphBreak()
      : content = '\n',
        lpFont = LPFont.body(),
        isClickable = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        content,
        style: lpFont.textStyle,
      ),
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
    TapGestureRecognizer? gestureRecog(LPText lpText) {
      if (lpText.isClickable) {
        return TapGestureRecognizer()
          ..onTap = () {
            window.open(lpText.props['url'], '');
          };
      }
    }

    return RichText(
      text: TextSpan(
        children: List<TextSpan>.generate(
          lpTextComponents.length,
          (int i) => TextSpan(
            text: lpTextComponents[i].content,
            style: lpTextComponents[i].lpFont.textStyle,
            recognizer: gestureRecog(lpTextComponents[i]),
          ),
        ),
      ),
    );
  }
}
