import 'package:fl_localization/fl_localization.dart';
import 'package:flutter/material.dart';

FlLocalization instance;

void main() async {
  instance = await FlLocalization.create(
    supportedLocales: ['en', 'fa'],
    initialLang: InitialLang.system(),
    assetPrefix: 'assets/lang',
  );

  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlLocalizationWidget(
      flLocalization: instance,
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
                  Text(instance.locale),
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
              itemCount: instance.supportedLocales.length,
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  '${index + 1} : ' + instance.supportedLocales[index],
                ),
                onTap: () {
                  instance.setLocale(instance.supportedLocales[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
