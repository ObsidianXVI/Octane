part of octane;

extension StringUtils on String {
  String get brokenIntoLines => split(' ').join('\n');
}

String projectViewingSlugFor(Project p) =>
    "${OctaneRoutes.project}/${p.urlSafeSlug}";

class PausableTimer {
  final Duration interval;
  final Function callback;
  Timer? _timer;

  PausableTimer({
    required this.interval,
    required this.callback,
  }) {
    _setTimer();
  }

  void _setTimer() {
    _timer = Timer.periodic(interval, (_) => callback());
  }

  void pause() {
    _timer?.cancel();
    _timer = null;
  }

  void resume() {
    if (_timer == null) _setTimer();
  }

  void cancel() {
    if (_timer != null) _timer = null;
  }
}
