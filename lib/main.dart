import 'package:cool_calculator/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDark = false;

  @override
  void initState() {
    var brightness =
        SchedulerBinding.instance.platformDispatcher.platformBrightness;
    _isDark = brightness == Brightness.dark;
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cool Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
        colorScheme: ColorScheme.light(
          primary: Colors.grey.shade800,
          primaryContainer: Colors.grey.shade50,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
        colorScheme: ColorScheme.dark(
          primary: Colors.grey.shade600,
          primaryContainer: Colors.grey.shade900,
        ),
        useMaterial3: true,
      ),
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      home: Home(
        switchLightDarkMode: _switchLightDarkMode,
        isDarkModeInit: _isDark,
      ),
    );
  }

  void _switchLightDarkMode(bool isDark) {
    setState(() {
      _isDark = isDark;
    });
  }
}
