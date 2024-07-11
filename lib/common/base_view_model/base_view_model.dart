import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:tezda_app/common/di/di.dart';
import 'package:tezda_app/common/storage/local_storage.dart';


class BaseViewModel extends ChangeNotifier {
  final storage = locator<LocalStorageService>();

  final Set<dynamic> _disposables = {};

  @protected
  Timer? _deBouncer;

  void debounce(Duration duration, VoidCallback action) {
    _deBouncer?.cancel();
    _deBouncer = Timer(duration, action);
  }

  /// currently disposables can be
  /// [StreamSubscription], [ScrollController]
  void addDisposables(dynamic subscription) {
    _disposables.add(subscription);
  }

  @override
  void dispose() {
    for (final element in _disposables) {
      if (element is StreamSubscription) element.cancel();
      if (element is void Function()) {
        element.call();
      }
      if (element is ScrollController) {
        element.dispose();
      }
    }
    _deBouncer?.cancel();
    super.dispose();
  }
}