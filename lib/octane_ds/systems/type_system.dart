part of octane.ds;

final ResponsiveTypeface heroTitle = HeroTitle();
final ResponsiveTypeface pageTitle = PageTitle();
final ResponsiveTypeface heading1 = Heading1();
final ResponsiveTypeface heading2 = Heading2();
final ResponsiveTypeface heading3 = Heading3();
final ResponsiveTypeface heading4 = Heading4();
final ResponsiveTypeface body1 = Body1();
final ResponsiveTypeface button1 = Button1();

class HeroTitle extends ResponsiveTypeface {
  HeroTitle() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(240, 160),
        fontWeight: FontWeight.w900,
        height: 0.8,
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(70, 68),
        fontWeight: FontWeight.w900,
        height: 0.8,
      ),
    });
  }
}

class PageTitle extends ResponsiveTypeface {
  PageTitle() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(190, 170),
        fontWeight: FontWeight.w100,
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(60, 48),
        fontWeight: FontWeight.w100,
      ),
    });
  }
}

class Heading1 extends ResponsiveTypeface {
  Heading1() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(79, 67),
        fontWeight: FontWeight.w900,
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(52, 40),
        fontWeight: FontWeight.w900,
      ),
    });
  }
}

class Heading2 extends ResponsiveTypeface {
  Heading2() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(69, 57),
        fontWeight: FontWeight.w700,
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(56, 34),
        fontWeight: FontWeight.w700,
      ),
    });
  }
}

class Heading3 extends ResponsiveTypeface {
  Heading3() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(59, 47),
        fontWeight: FontWeight.w300,
        height: scaled(1.5, 1),
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(42, 28),
        fontWeight: FontWeight.w300,
        height: scaled(1.5, 1),
      ),
    });
  }
}

class Heading4 extends ResponsiveTypeface {
  Heading4() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(42, 38),
        fontWeight: FontWeight.w300,
        height: scaled(1.2, 1),
        fontStyle: FontStyle.italic,
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(38, 26),
        fontWeight: FontWeight.w300,
        height: scaled(1.2, 1),
        fontStyle: FontStyle.italic,
      ),
    });
  }
}

class Body1 extends ResponsiveTypeface {
  Body1() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
          fontSize: scaled(22, 20),
          fontWeight: FontWeight.w500,
          height: scaled(1.5, 1.1),
          fontFamily: 'Cairo'),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(20, 16),
        fontWeight: FontWeight.w500,
        height: scaled(1.2, 1.1),
        fontFamily: 'Cairo',
      ),
    });
  }
}

class Button1 extends ResponsiveTypeface {
  Button1() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
          fontSize: scaled(24, 22),
          fontWeight: FontWeight.w600,
          height: scaled(1.3, 1.1),
          fontFamily: 'Cairo'),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(22, 16),
        fontWeight: FontWeight.w600,
        height: scaled(1.3, 1.1),
        fontFamily: 'Cairo',
      ),
    });
  }
}

/* mixin TypeScale {
  TextStyle heroTitle({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(180, 52),
        height: height ?? scaledType(1, 0.9),
        fontWeight: fontWeight ?? FontWeight.w900,
        fontFamily: fontFamily ?? 'Fraunces_Standard',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle pageTitle({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(190, 48),
        height: height ?? scaledType(1, 0.9),
        fontWeight: fontWeight ?? FontWeight.w100,
        fontFamily: fontFamily ?? 'Fraunces_Standard',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle heading1({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(79, 40),
        height: height ?? scaledType(1, 0.9),
        fontWeight: fontWeight ?? FontWeight.w900,
        fontFamily: fontFamily ?? 'Fraunces_Standard',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle heading2({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(69, 34),
        height: height ?? scaledType(1, 0.9),
        fontWeight: fontWeight ?? FontWeight.w700,
        fontFamily: fontFamily ?? 'Fraunces_Standard',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle heading3({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(59, 28),
        height: height ?? scaledType(1.5, 1),
        fontWeight: fontWeight ?? FontWeight.w300,
        fontFamily: fontFamily ?? 'Fraunces_Standard',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle heading4({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(35, 26),
        height: height ?? scaledType(1.2, 1),
        fontWeight: fontWeight ?? FontWeight.w300,
        fontFamily: fontFamily ?? 'Fraunces_Standard',
        fontStyle: fontStyle ?? FontStyle.italic,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle body1({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(22, 16),
        height: height ?? scaledType(1.5, 1.1),
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily ?? 'Cairo',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle button1({
    required Color color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    TextOverflow? overflow,
  }) =>
      TextStyle(
        color: color,
        fontSize: fontSize ?? scaledType(24, 16),
        height: height ?? scaledType(1.3, 1.1),
        fontWeight: fontWeight ?? FontWeight.w600,
        letterSpacing: letterSpacing,
        fontFamily: fontFamily ?? 'Cairo',
        fontStyle: fontStyle,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );
}
 */