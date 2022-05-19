import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color lightBlueA20019 = fromHex('#1940bfff');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#ffc733');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#8f99b0');

  static Color lightBlueA200 = fromHex('#40bfff');

  static Color indigoA200 = fromHex('#5c61f5');

  static Color indigo900 = fromHex('#213363');

  static Color lightBlueA2003d = fromHex('#3d40bfff');

  static Color pink300 = fromHex('#fa7082');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blue50 = fromHex('#ebf0ff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
