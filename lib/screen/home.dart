import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final dynamic switchLightDarkMode;
  final bool isDarkModeInit;
  const Home(
      {super.key,
      required this.switchLightDarkMode,
      required this.isDarkModeInit});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = widget.isDarkModeInit;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isDarkMode = !isDarkMode;
                    });
                    widget.switchLightDarkMode(isDarkMode);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 2,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(0),
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer),
                  child: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode,
                      color: Theme.of(context).colorScheme.primary)),
            ),
          ],
        ),
      ),
    );
  }
}
