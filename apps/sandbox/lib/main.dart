import 'package:flutter/material.dart';
import 'package:sandbox/tailwind/tailwind_sizes.dart';
import 'package:sandbox/tailwind/tw.dart';
import 'package:tailwind_attributes/tailwind_attributes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<TextAttribute> headline(Tw tw) => [tw.text.xl, tw.font.bold, tw.text.slate(900)];
    List<TextAttribute> body(Tw tw) => [tw.text.base, tw.font.normal, tw.font.italic, tw.text.slate700];

    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: TailwindSizes.textBase),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TwText(
                'Hello World!',
                attributes: Tw.attributes(context, headline),
              ),
              const Text('Body').apply(Tw.attributes(context, body)),
            ],
          ),
        ),
      ),
    );
  }
}
