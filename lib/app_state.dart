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
    _saudeAtualC = prefs.getInt('ff_saudeAtualC') ?? _saudeAtualC;
    _alimentacaoAtualC =
        prefs.getInt('ff_alimentacaoAtualC') ?? _alimentacaoAtualC;
    _outrosAtualC = prefs.getInt('ff_outrosAtualC') ?? _outrosAtualC;
    _lazerAtualC = prefs.getInt('ff_lazerAtualC') ?? _lazerAtualC;
    _investimentosAtualC =
        prefs.getInt('ff_investimentosAtualC') ?? _investimentosAtualC;
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

  int _saudeAtualC = 30;
  int get saudeAtualC => _saudeAtualC;
  set saudeAtualC(int _value) {
    notifyListeners();

    _saudeAtualC = _value;
    prefs.setInt('ff_saudeAtualC', _value);
  }

  int _alimentacaoAtualC = 30;
  int get alimentacaoAtualC => _alimentacaoAtualC;
  set alimentacaoAtualC(int _value) {
    notifyListeners();

    _alimentacaoAtualC = _value;
    prefs.setInt('ff_alimentacaoAtualC', _value);
  }

  int _outrosAtualC = 10;
  int get outrosAtualC => _outrosAtualC;
  set outrosAtualC(int _value) {
    notifyListeners();

    _outrosAtualC = _value;
    prefs.setInt('ff_outrosAtualC', _value);
  }

  int _lazerAtualC = 10;
  int get lazerAtualC => _lazerAtualC;
  set lazerAtualC(int _value) {
    notifyListeners();

    _lazerAtualC = _value;
    prefs.setInt('ff_lazerAtualC', _value);
  }

  int _investimentosAtualC = 20;
  int get investimentosAtualC => _investimentosAtualC;
  set investimentosAtualC(int _value) {
    notifyListeners();

    _investimentosAtualC = _value;
    prefs.setInt('ff_investimentosAtualC', _value);
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
