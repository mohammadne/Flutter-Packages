import 'package:flutter/material.dart';
import 'package:fl_localization/fl_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

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
                  Text(FlLocalization.currentLocale(context)),
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
              itemCount: FlLocalization.supportedLocalesKey(context).length,
              itemBuilder: (_, index) => ListTile(
                title: Text(
                  '${index + 1} : ' +
                      FlLocalization.supportedLocalesKey(context)[index],
                ),
                onTap: () {
                  final locale =
                      FlLocalization.supportedLocalesKey(context)[index];
                  FlLocalization.setLocale(context, locale);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
