import 'package:flutter/material.dart';

class Responsive {
  static Responsive instance = new Responsive();

  int width;
  int height;
  bool allowFontScaling;

  static MediaQueryData _mediaQueryData;
  static double _screenWidth;
  static double _screenHeight;
  static double _pixelRatio;
  static double _statusBarHeight;
  static double _bottomBarHeight;
  static double _textScaleFactor;

  // se inicializa con el tamaño de la pantalla en al que se basa el diseño
  // en este caso es el iphone 6
  Responsive({
    this.width = 1080,
    this.height = 1920,
    this.allowFontScaling = false
  });

  static Responsive getInstance() {
    return instance;
  }

  // metodo que inicializa las variables privadas de la clase con los valores de la pantalla
  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = mediaQuery.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
  }

  // métodos GET
  static MediaQueryData get mediaQueryData => _mediaQueryData;
  static double get textScaleFactory => _textScaleFactor;
  static double get pixelRatio => _pixelRatio;
  // obtener ancho del dispositivo
  static double get screenWidthDevice => _screenWidth;
  // obtener alto del dispositivo
  static double get screenHeightDevice => _screenHeight;
  static double get screenWidth => _screenWidth * _pixelRatio;
  static double get screenHeight => _screenHeight * _pixelRatio;
  static double get statusBarHeight => _statusBarHeight * _pixelRatio;
  static double get bottomBarHeight => _bottomBarHeight * _pixelRatio;

  get scaleWidth => _screenWidth / instance.width;
  get scaleHeight => _screenHeight / instance.height;
  setWidth(int width) => width * scaleWidth;
  setHeight(int height) => height * scaleHeight;
  setSp(int fontSize) => allowFontScaling ? setWidth(fontSize) : setWidth(fontSize) / _textScaleFactor;
}
