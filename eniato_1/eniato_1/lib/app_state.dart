import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  String _email = '';
  String get email => _email;
  set email(String _value) {
    notifyListeners();

    _email = _value;
  }

  String _senha = '';
  String get senha => _senha;
  set senha(String _value) {
    notifyListeners();

    _senha = _value;
  }

  int _idade = 0;
  int get idade => _idade;
  set idade(int _value) {
    notifyListeners();

    _idade = _value;
  }

  int _quantidade = 0;
  int get quantidade => _quantidade;
  set quantidade(int _value) {
    notifyListeners();

    _quantidade = _value;
  }

  String _codAcao = '';
  String get codAcao => _codAcao;
  set codAcao(String _value) {
    notifyListeners();

    _codAcao = _value;
  }

  String _tipoNeg = '';
  String get tipoNeg => _tipoNeg;
  set tipoNeg(String _value) {
    notifyListeners();

    _tipoNeg = _value;
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
