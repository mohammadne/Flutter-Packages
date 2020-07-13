import 'package:flutter/material.dart';

import 'fl_localization.dart';

String translate(String key, {BuildContext context}) {
  return context == null
      ? Localization.instance.tr(key)
      : Localization.of(context).tr(key);
}
