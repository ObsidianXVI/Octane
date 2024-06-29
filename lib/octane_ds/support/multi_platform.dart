part of octane.ds;

class DesktopPlatform extends DetectedPlatform {
  const DesktopPlatform() : super('desktop', baseWidth: 1440, baseHeight: 835);
}

class MobilePlatform extends DetectedPlatform {
  const MobilePlatform() : super('mobile', baseWidth: 418, baseHeight: 748);
}

class UnknownPlatform extends DetectedPlatform {
  const UnknownPlatform() : super('unknown', baseWidth: 418, baseHeight: 748);
}
