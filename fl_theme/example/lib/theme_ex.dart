import 'package:flutter/material.dart';

extension ColorSchemeEx on ColorScheme {
  Color get facebook => Color(0xff4267B2);
  Color get facebookSplash => Color(0xff5877b7);

  Color get google => Color(0xffD54C3F);
  Color get googleSplash => Color(0xffce645a);

  Color get warning => this.brightness == Brightness.light
      ? const Color(0xFF28a745)
      : const Color(0xFF28a745);
}
