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
  FlTheme get theme => FlTheme();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FL THEME'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('current Brightness :'),
                    Text(theme.themeState.brightness.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('current Palette :'),
                    Text(theme.themeState.palette.toString()),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 3),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('change Brightness'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => theme.setTheme(theme.themeState.copyWith
                          .call(brightness: ThemeBrightness.light())),
                      child: Text('Light'),
                    ),
                    GestureDetector(
                      onTap: () => theme.setTheme(theme.themeState.copyWith
                          .call(brightness: ThemeBrightness.dark())),
                      child: Text('dark'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 3),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('change Palette'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => theme.setTheme(theme.themeState.copyWith
                          .call(palette: ThemePalette.orange())),
                      child: Text('orange'),
                    ),
                    GestureDetector(
                      onTap: () => theme.setTheme(theme.themeState.copyWith
                          .call(palette: ThemePalette.blue())),
                      child: Text('blue'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
