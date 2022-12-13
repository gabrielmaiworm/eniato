// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color background;
  late Color textColor;
  late Color carrinho;
  late Color grayLight;
  late Color errorRed;
  late Color grayIcon;
  late Color gray200;
  late Color formulario;
  late Color black600;
  late Color tertiary400;
  late Color corPerfil1;
  late Color textoscadastro;
  late Color textcolor2;
  late Color appbar;
  late Color textcolor3;
  late Color degrade1;
  late Color degrade2;
  late Color opcoes;
  late Color quadradoPP;
  late Color icone;
  late Color pesquisar;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF00968A);
  late Color secondaryColor = const Color(0xFFF2A384);
  late Color tertiaryColor = const Color(0xFF39D2C0);
  late Color alternate = const Color(0xFF39D2C0);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF090F13);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color background = Color(0xFFDBE2E7);
  late Color textColor = Color(0xFFFFFFFF);
  late Color carrinho = Color(0xFF57636C);
  late Color grayLight = Color(0xFF8B97A2);
  late Color errorRed = Color(0xFFF06A6A);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color formulario = Color(0xFF95A1AC);
  late Color black600 = Color(0xFF090F13);
  late Color tertiary400 = Color(0xF0FFFFFF);
  late Color corPerfil1 = Color(0xFFD9D8D8);
  late Color textoscadastro = Color(0xC0CDCDCD);
  late Color textcolor2 = Color(0xFF111417);
  late Color appbar = Color(0xFF57636C);
  late Color textcolor3 = Color(0xFF04A09D);
  late Color degrade1 = Color(0xFF00968A);
  late Color degrade2 = Color(0xFF829099);
  late Color opcoes = Color(0xFF73808D);
  late Color quadradoPP = Color(0xFFB5B9BE);
  late Color icone = Color(0xFFD9D8D8);
  late Color pesquisar = Color(0xFF213A94);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Lexend Deca';
  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.textColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
  String get title2Family => 'Lexend Deca';
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 28,
      );
  String get title3Family => 'Lexend Deca';
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.textColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle1Family => 'Lexend Deca';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.grayLight,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get subtitle2Family => 'Lexend Deca';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText1Family => 'Lexend Deca';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'Lexend Deca';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.textColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFF00968A);
  late Color secondaryColor = const Color(0xFFF2A384);
  late Color tertiaryColor = const Color(0xFF39D2C0);
  late Color alternate = const Color(0xFF39D2C0);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF090F13);
  late Color secondaryText = const Color(0xFF95A1AC);

  late Color background = Color(0xFF1A1F24);
  late Color textColor = Color(0xFFFFFFFF);
  late Color carrinho = Color(0xFF57636C);
  late Color grayLight = Color(0xFF8B97A2);
  late Color errorRed = Color(0xFFF06A6A);
  late Color grayIcon = Color(0xFF95A1AC);
  late Color gray200 = Color(0xFFDBE2E7);
  late Color formulario = Color(0xFF262D34);
  late Color black600 = Color(0xFFFFFFFF);
  late Color tertiary400 = Color(0xFF39D2C0);
  late Color corPerfil1 = Color(0xFF8B97A2);
  late Color textoscadastro = Color(0xFF3CDA48);
  late Color textcolor2 = Color(0xFF95A1AC);
  late Color appbar = Color(0xFF111417);
  late Color textcolor3 = Color(0xFF00CCB6);
  late Color degrade1 = Color(0xFF00968A);
  late Color degrade2 = Color(0xFF000000);
  late Color opcoes = Color(0xFF0E1113);
  late Color quadradoPP = Color(0xFF111417);
  late Color icone = Color(0xFF1A1F24);
  late Color pesquisar = Color(0xFF111417);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
