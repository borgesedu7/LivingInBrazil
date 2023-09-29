import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _opa = [];
  List<String> get opa => _opa;
  set opa(List<String> _value) {
    _opa = _value;
  }

  void addToOpa(String _value) {
    _opa.add(_value);
  }

  void removeFromOpa(String _value) {
    _opa.remove(_value);
  }

  void removeAtIndexFromOpa(int _index) {
    _opa.removeAt(_index);
  }

  void updateOpaAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _opa[_index] = updateFn(_opa[_index]);
  }

  void insertAtIndexInOpa(int _index, String _value) {
    _opa.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
