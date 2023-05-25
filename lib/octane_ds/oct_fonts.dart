part of octane.ds;

enum OCTFFontFamily {
  headers('Fraunces_Standard'),
  body('Fraunces_Soft');

  final String name;
  const OCTFFontFamily(this.name);
}

abstract class OCTFComponent {
  const OCTFComponent();

  InlineSpan render(BuildContext context);
}

class OCTFHeroTitle extends OCTFComponent {
  final String content;

  const OCTFHeroTitle({required this.content});

  @override
  InlineSpan render(BuildContext context) {
    return TextSpan(
      text: content,
      style: TextStyle(
        color: OCTTColor.grey200,
        fontFamily: OCTFFontFamily.headers.name,
        fontSize: 200,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class OCTFFrameTitle extends OCTFComponent {
  final String content;

  const OCTFFrameTitle({required this.content});

  @override
  InlineSpan render(BuildContext context) {
    return TextSpan(
      text: content,
      style: TextStyle(
        color: OCTTColor.grey200,
        fontFamily: OCTFFontFamily.headers.name,
        fontSize: 120,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class OCTFBodyPlain extends OCTFComponent {
  final String content;

  const OCTFBodyPlain({required this.content});

  @override
  InlineSpan render(BuildContext context) {
    return TextSpan(
      text: content,
      style: TextStyle(
        color: OCTTColor.grey200,
        fontFamily: OCTFFontFamily.body.name,
        fontSize: 40,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class OCTFBodyHyperlink extends OCTFComponent {
  final String content;
  final Uri url;

  const OCTFBodyHyperlink({required this.content, required this.url});

  @override
  InlineSpan render(BuildContext context) {
    return TextSpan(
      text: content,
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          window.open(url.toString(), '');
        },
      style: TextStyle(
        color: OCTTColor.purple800,
        fontFamily: OCTFFontFamily.body.name,
        fontSize: 40,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
