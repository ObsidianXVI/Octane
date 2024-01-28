part of octane;

mixin TypeScale {
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
        fontSize: fontSize ?? 69,
        height: height ?? 1,
        fontWeight: fontWeight ?? FontWeight.w900,
        fontFamily: fontFamily ?? 'Cairo',
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
        fontSize: fontSize ?? 55,
        height: height ?? 1,
        fontWeight: fontWeight ?? FontWeight.w800,
        fontFamily: fontFamily ?? 'Cairo',
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
        fontSize: fontSize ?? 44,
        height: height ?? 1.2,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontFamily: fontFamily ?? 'Cairo',
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
        fontSize: fontSize ?? 35,
        height: height ?? 1.2,
        fontWeight: fontWeight ?? FontWeight.w700,
        fontFamily: fontFamily ?? 'Cairo',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle heading5({
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
        fontSize: fontSize ?? 28,
        height: height ?? 1,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: fontFamily ?? 'Cairo',
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );

  TextStyle heading6({
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
        fontSize: fontSize ?? 22,
        height: height ?? 1.25,
        fontWeight: fontWeight ?? FontWeight.w600,
        fontFamily: fontFamily ?? 'Cairo',
        fontStyle: fontStyle,
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
        fontSize: fontSize ?? 18,
        height: height ?? 1.5,
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
        fontSize: fontSize ?? 16,
        height: height ?? 1.3,
        fontWeight: fontWeight ?? FontWeight.w700,
        letterSpacing: letterSpacing ?? 1.05 * (fontSize ?? 16),
        fontFamily: fontFamily ?? 'Cairo',
        fontStyle: fontStyle,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        fontFamilyFallback: fontFamilyFallback,
        overflow: overflow,
      );
}
