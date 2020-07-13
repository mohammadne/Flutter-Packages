import 'package:flutter/material.dart';
import 'package:fl_localization/fl_localization.dart';

import '../../lib/fl_localization.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlLocalization(
      assetPrefix: 'assets/lang',
      supportedLocalesHashMap: <String, Locale>{
        'english': Locale('en', 'US'),
        'persian': Locale('fa', 'IR'),
      },
      initialLang: InitialLang.firstItem(),
      builder: (localizationsDelegates, supportedLocales, currentLocale) {
        return MaterialApp(
          locale: currentLocale,
          supportedLocales: supportedLocales,
          title: 'app.name'.tr(),
          localizationsDelegates: localizationsDelegates,
          home: UI(),
        );
      },
    );
  }
}

class UI extends StatefulWidget {
  @override
  _UIState createState() => _UIState();
}

class _UIState extends State<UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ui.app_bar').tr(),
      ),
      body: Column(
        children: [
          Text(translate('ui.current_lang')),
          Text(FlLocalization.currentLocale(context)),
          Text('ui.available_locales').tr(),
          ListView.builder(
            itemCount: FlLocalization.supportedLocalesKey(context).length,
            itemBuilder: (_, index) => Container(),
          ),
        ],
      ),
    );
  }
}
