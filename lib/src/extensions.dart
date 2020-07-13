import 'package:flutter/material.dart';

import 'public.dart' as public;

extension TextExtension on Text {
  Text tr() => Text(
        public.translate(data),
        key: key,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
      );
}

extension StringExtension on String {
  String tr() => public.translate(this);
}
