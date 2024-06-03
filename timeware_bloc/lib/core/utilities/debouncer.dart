import 'dart:async';
import 'package:flutter/material.dart';

class Debouncer {
  final Duration duration;
  Timer? _timer;

  Debouncer({this.duration = const Duration(milliseconds: 300)});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(duration, () {
      action();
      _timer = null;
    });
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
  }
}
