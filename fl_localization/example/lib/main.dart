import 'package:fl_localization/fl_localization.dart';
import 'package:flutter/material.dart';

FlLocalization flLocalization;

void main() async {
  flLocalization = FlLocalization(
    supportedLocales: ['en_US', 'fa_IR'],
    initialLang: InitialLang.system(),
    assetPrefix: 'assets/lang',
  );

  await flLocalization.initialize();

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlLocalizationWidget(
      flLocalization: flLocalization,
      builder: (delegates, locales, currentLocale) => MaterialApp(
        title: 'app.name'.tr(),

        /// Localization Part
        locale: currentLocale,
        supportedLocales: locales,
        localizationsDelegates: delegates,

        home: UI(),
      ),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 80,
              child: Row(
                children: [
                  Text(translate('ui.current_lang')),
                  Text(' : '),
                  Text(flLocalization.locale),
                ],
              ),
            ),
            Text(
              'ui.available_locales',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ).tr(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: flLocalization.supportedLocales.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  '${index + 1} : ' + flLocalization.supportedLocales[index],
                ),
                onTap: () {
                  flLocalization.locale =
                      flLocalization.supportedLocales[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
