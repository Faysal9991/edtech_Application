import 'package:flutter/foundation.dart';

/// Prevents late asynchronous completions from notifying a role controller
/// after Provider disposed its keyed shell during a role/organization switch.
mixin SafeChangeNotifier on ChangeNotifier {
  bool _notifierDisposed = false;

  @protected
  bool get notifierDisposed => _notifierDisposed;

  @override
  void notifyListeners() {
    if (!_notifierDisposed) super.notifyListeners();
  }

  @override
  void dispose() {
    _notifierDisposed = true;
    super.dispose();
  }
}
