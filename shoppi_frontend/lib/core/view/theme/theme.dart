import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xff000000),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: const Color(0xffffcccc),
  primaryColorDark: const Color(0xffFDC44A),
  accentColor: const Color(0xffff0000),
  accentColorBrightness: Brightness.dark,
  canvasColor: const Color(0xfffafafa),
  scaffoldBackgroundColor: const Color(0xfffafafa),
  bottomAppBarColor: const Color(0xffffffff),
  cardColor: const Color(0xffffffff),
  dividerColor: const Color(0x1f000000),
  highlightColor: const Color(0x66bcbcbc),
  splashColor: const Color(0x66c8c8c8),
  selectedRowColor: const Color(0xfff5f5f5),
  unselectedWidgetColor: const Color(0x8a000000),
  disabledColor: const Color(0x61000000),
  buttonColor: const Color(0xffe0e0e0),
  toggleableActiveColor: const Color(0xffcc0000),
  secondaryHeaderColor: const Color(0xffffe5e5),
  textSelectionColor: const Color(0xffff9999),
  cursorColor: const Color(0xff4285f4),
  textSelectionHandleColor: const Color(0xffff6666),
  backgroundColor: const Color(0xffff9999),
  dialogBackgroundColor: const Color(0xffffffff),
  indicatorColor: const Color(0xffff0000),
  hintColor: const Color(0x8a000000),
  errorColor: const Color(0xffd32f2f),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    alignedDropdown: false,
    buttonColor: Color(0xffe0e0e0),
    disabledColor: Color(0x61000000),
    highlightColor: const Color(0x29000000),
    splashColor: Color(0x1f000000),
    focusColor: Color(0x1f000000),
    hoverColor: Color(0x0a000000),
    colorScheme: ColorScheme(
      primary: Color(0xff000000),
      primaryVariant: Color(0xff990000),
      secondary: Color(0xffff0000),
      secondaryVariant: Color(0xff990000),
      surface: Color(0xffffffff),
      background: Color(0xffff9999),
      error: Color(0xffd32f2f),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xffffffff),
      onSurface: Color(0xff000000),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.light,
    ),
  ),
  textTheme: const TextTheme(
    headline4: TextStyle(
      color: Color(0xff000000),
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline3: const TextStyle(
      color: Color(0xff000000),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    headline2: const TextStyle(
      color: Color(0xff000000),
      fontSize: 25,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    headline1: const TextStyle(
      color: Color(0xff000000),
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline5: const TextStyle(
      color: Color(0xdd000000),
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline6: const TextStyle(
      color: Color(0xdd000000),
      fontSize: 10,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: TextStyle(
      color: const Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: const TextStyle(
      color: Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: const TextStyle(
      color: Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: const TextStyle(
      color: Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    overline: const TextStyle(
      color: const Color(0xff000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: const TextTheme(
    headline4: TextStyle(
      color: Color(0xfffafafa),
      fontSize: 15,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline3: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    headline2: const TextStyle(
      color: const Color(0xfffafafa),
      fontSize: 25,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    headline1: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline5: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: 13,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline6: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: 10,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: TextStyle(
      color: const Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: const TextStyle(
      color: Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    overline: const TextStyle(
      color: const Color(0xfffafafa),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  accentTextTheme: const TextTheme(
    headline4: TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline3: const TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline2: const TextStyle(
      color: const Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline1: const TextStyle(
      color: Color(0xb3ffffff),
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
    ),
    headline5: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    headline6: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    subtitle1: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText1: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    bodyText2: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    caption: const TextStyle(
      color: Color(0xb3ffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    subtitle2: const TextStyle(
      color: const Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    overline: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,
    isDense: false,
    contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 0, right: 0),
    isCollapsed: false,
    prefixStyle: const TextStyle(
      color: const Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: const TextStyle(
      color: Color(0xdd000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: const Color(0x00000000),
    errorBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: const UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: const Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
    ),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff000000),
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: const IconThemeData(
    color: const Color(0xdd000000),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  accentIconTheme: const IconThemeData(
    color: Color(0xffffffff),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,
    thumbShape: null,
    overlayColor: null,
    valueIndicatorColor: null,
    valueIndicatorShape: null,
    showValueIndicator: null,
    valueIndicatorTextStyle: const TextStyle(
      color: Color(0xffffffff),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: const Color(0xffffffff),
    unselectedLabelColor: const Color(0xb2ffffff),
  ),
  chipTheme: const ChipThemeData(
    backgroundColor: Color(0x1f000000),
    brightness: Brightness.light,
    deleteIconColor: const Color(0xde000000),
    disabledColor: const Color(0x0c000000),
    labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
    labelStyle: TextStyle(
      color: Color(0xde000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
    secondaryLabelStyle: const TextStyle(
      color: Color(0x3d000000),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: const Color(0x3d000000),
    selectedColor: Color(0x3d000000),
    shape: StadiumBorder(
        side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    )),
  ),
  dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
    side: const BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
  )),
);