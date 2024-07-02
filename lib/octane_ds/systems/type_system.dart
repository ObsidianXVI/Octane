part of octane.ds;

final ResponsiveTypeface heroTitle = HeroTitle();
final ResponsiveTypeface pageTitle = PageTitle();
final ResponsiveTypeface heading1 = Heading1();
final ResponsiveTypeface heading2 = Heading2();
final ResponsiveTypeface heading3 = Heading3();
final ResponsiveTypeface heading4 = Heading4();
final ResponsiveTypeface body1 = Body1();
final ResponsiveTypeface body2 = Body2();
final ResponsiveTypeface button1 = Button1();

class HeroTitle extends ResponsiveTypeface {
  HeroTitle() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(240, 160),
        fontWeight: FontWeight.w900,
        height: 0.8,
        fontVariations: const [FontVariation.opticalSize(144)],
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(70, 68),
        fontWeight: FontWeight.w900,
        height: 0.8,
        fontVariations: const [FontVariation.opticalSize(144)],
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
        fontFamily: 'Cairo',
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(60, 48),
        fontWeight: FontWeight.w100,
        fontFamily: 'Cairo',
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
        fontVariations: const [FontVariation.opticalSize(86)],
        letterSpacing: 0.01,
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(52, 40),
        fontWeight: FontWeight.w900,
        fontVariations: const [FontVariation.opticalSize(86)],
        letterSpacing: 0.01,
      ),
    });
  }
}

class Heading2 extends ResponsiveTypeface {
  Heading2() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(59, 57),
        fontWeight: FontWeight.w700,
        fontFamily: 'Cairo',
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(43, 34),
        fontWeight: FontWeight.w700,
        fontFamily: 'Cairo',
      ),
    });
  }
}

class Heading3 extends ResponsiveTypeface {
  Heading3() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(49, 47),
        fontWeight: FontWeight.w300,
        height: scaled(1, 1),
        fontFamily: 'Cairo',
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(32, 28),
        fontWeight: FontWeight.w300,
        height: scaled(1.3, 1),
        fontFamily: 'Cairo',
      ),
    });
  }
}

class Heading4 extends ResponsiveTypeface {
  Heading4() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(35, 38),
        fontWeight: FontWeight.w300,
        height: scaled(1.2, 1),
        fontFamily: 'Cairo',
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(31, 26),
        fontWeight: FontWeight.w300,
        height: scaled(1.2, 1),
        fontFamily: 'Cairo',
      ),
    });
  }
}

class Body1 extends ResponsiveTypeface {
  Body1() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(22, 20),
        fontWeight: FontWeight.w100,
        height: scaled(1.5, 1.1),
        fontFamily: 'Cairo',
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(20, 16),
        fontWeight: FontWeight.w100,
        height: scaled(1.2, 1.1),
        fontFamily: 'Cairo',
      ),
    });
  }
}

class Body2 extends ResponsiveTypeface {
  Body2() {
    styleDelegates.addAll({
      const DesktopPlatform(): TextStyle(
        fontSize: scaled(22, 20),
        fontWeight: FontWeight.w400,
        height: scaled(1.5, 1.1),
        fontFamily: 'Cairo',
      ),
      const MobilePlatform(): TextStyle(
        fontSize: scaled(20, 16),
        fontWeight: FontWeight.w400,
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
