import 'package:example/theme_manager.dart';
import 'package:fl_theme/fl_theme.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlTheme().initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlThemeWidget(
      themeManager: ThemeManager(),
      flTheme: FlTheme(),
      builder: (darkTheme, theme) => MaterialApp(
        title: 'Fl Theme',
        theme: theme,
        darkTheme: darkTheme,
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
