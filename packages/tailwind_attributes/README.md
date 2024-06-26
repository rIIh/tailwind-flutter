# Tailwind Attributes

Theming based on Attributes

Config: [tailwind.config.json](../../apps/sandbox/tailwind.config.json)

Example: 

```dart
Widget build(BuildContext context) {
  List<TextAttribute> headline(Tw tw) => [tw.text.xl, tw.font.bold, tw.text.slate(900)];
  List<TextAttribute> body(Tw tw) => [tw.text.base, tw.font.normal, tw.font.italic, tw.text.slate700];

  return Column(
    children: [
      TwText(
        'Hello World!',
        attributes: Tw.attributes(context, headline),
      ),
      const Text('Body').apply(Tw.attributes(context, body)),
    ],
  );
}
```
