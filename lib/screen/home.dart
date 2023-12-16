import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.light_mode,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.dark_mode,
                          color: Theme.of(context).colorScheme.secondary)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
