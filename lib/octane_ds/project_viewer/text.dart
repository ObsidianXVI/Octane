part of octane.ds;

class OctaneText extends StatelessWidget {
  final String content;
  final TextStyle font;
  final bool isClickable;
  final bool isHeader;
  final TextAlign textAlign;
  final Alignment alignment;
  final Map<String, dynamic> props = {};

  OctaneText({
    required this.content,
    required this.font,
    required this.isClickable,
    required this.isHeader,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
    super.key,
  });

  OctaneText.header1({
    required this.content,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
  })  : font = heading1.apply(),
        isClickable = false,
        isHeader = true;

  OctaneText.header2({
    required this.content,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
  })  : font = heading2.apply(),
        isClickable = false,
        isHeader = true;

  OctaneText.header3({
    required this.content,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
  })  : font = heading3.apply(),
        isClickable = false,
        isHeader = true;

  OctaneText.plainBody({
    required this.content,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
    Color? color,
    bool isItalic = false,
    bool isBold = false,
    bool isStrikethrough = false,
  })  : font = body1.apply(
          TextStyle(
            fontStyle: isItalic ? FontStyle.italic : null,
            decoration: isStrikethrough ? TextDecoration.lineThrough : null,
            color: color ?? OctaneTheme.obsidianB000,
          ),
        ),
        isClickable = false,
        isHeader = false;

  OctaneText.codeStyle({
    required bool inline,
    required this.content,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
  })  : font = codeBody.apply(),
        isClickable = false,
        isHeader = false;

  OctaneText.hyperlink({
    required this.content,
    this.alignment = Alignment.topLeft,
    this.textAlign = TextAlign.left,
    Function? action,
    String? url,
    String? route,
  })  : font = body1.apply(
          const TextStyle(
            color: OctaneTheme.obsidianA000,
            decoration: TextDecoration.underline,
            decorationColor: OctaneTheme.obsidianA150,
          ),
        ),
        isClickable = true,
        isHeader = false {
    props.addAll({
      'url': url,
      'action': action,
      'route': route,
    });
  }

  OctaneText.paragraphBreak()
      : content = '\n',
        font = body1.apply(),
        isClickable = false,
        textAlign = TextAlign.left,
        isHeader = false,
        alignment = Alignment.topLeft;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: isClickable
          ? MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  if (props['route'] != null) {
                    Navigator.of(context).pushNamed(props['route']);
                  } else if (props['action'] != null) {
                    (props['action'] as Function).call();
                  } else if (props['url'] != null) {
                    web.window.open(props['url'], 'launching...');
                  }
                },
                child: Text(
                  content,
                  style: font,
                  textAlign: textAlign,
                ),
              ),
            )
          : SelectableText(
              content,
              style: font,
              textAlign: textAlign,
            ),
    );
  }
}

class OctaneTextSpan extends StatelessWidget {
  final List<OctaneText> textComponents;

  const OctaneTextSpan({
    required this.textComponents,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TapGestureRecognizer? gestureRecog(OctaneText text) {
      if (text.isClickable) {
        return TapGestureRecognizer()
          ..onTap = () {
            if (text.props.containsKey('action') &&
                text.props['action'] != null) {
              (text.props['action'] as Function).call();
            }
            if (text.props.containsKey('url') && text.props['url'] != null) {
              web.window.open(text.props['url'] as String, '');
            }
            if (text.props.containsKey('route') &&
                text.props['route'] != null) {
              Navigator.of(context).pushNamed(text.props['route'] as String);
            }
          };
      } else {
        return null;
      }
    }

    return Text.rich(
      TextSpan(
        children: List<TextSpan>.generate(
          textComponents.length,
          (int i) => TextSpan(
            text: textComponents[i].content,
            style: textComponents[i].font,
            recognizer: gestureRecog(textComponents[i]),
          ),
        ),
      ),
    );
  }
}
