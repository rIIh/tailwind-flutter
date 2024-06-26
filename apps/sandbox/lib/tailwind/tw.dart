import 'package:flutter/material.dart';
import 'package:tailwind_attributes/tailwind_attributes.dart';
import 'tailwind_colors.dart';
import 'tailwind_sizes.dart';

class Tw {
  Tw();

  final text = const _TextAttributes();

  final font = const _FontAttributes();

  static List<Attribute<T>> attributes<T>(
    BuildContext context,
    List<Attribute<T>> Function(Tw tw) build,
  ) {
    return build(Tw());
  }
}

class _TextAttributes {
  const _TextAttributes();

  final heading = const TextSizeAttribute(size: TailwindSizes.textHeading);

  final xs = const TextSizeAttribute(size: TailwindSizes.textXs);

  final sm = const TextSizeAttribute(size: TailwindSizes.textSm);

  final base = const TextSizeAttribute(size: TailwindSizes.textBase);

  final lg = const TextSizeAttribute(size: TailwindSizes.textLg);

  final xl = const TextSizeAttribute(size: TailwindSizes.textXl);

  final xl2 = const TextSizeAttribute(size: TailwindSizes.textXl2);

  final xl3 = const TextSizeAttribute(size: TailwindSizes.textXl3);

  final xl4 = const TextSizeAttribute(size: TailwindSizes.textXl4);

  final xl5 = const TextSizeAttribute(size: TailwindSizes.textXl5);

  final xl6 = const TextSizeAttribute(size: TailwindSizes.textXl6);

  final xl7 = const TextSizeAttribute(size: TailwindSizes.textXl7);

  final xl8 = const TextSizeAttribute(size: TailwindSizes.textXl8);

  final xl9 = const TextSizeAttribute(size: TailwindSizes.textXl9);

  final black = const TextColorAttribute(color: TailwindColors.black);

  final white = const TextColorAttribute(color: TailwindColors.white);

  final transparent =
      const TextColorAttribute(color: TailwindColors.transparent);

  final slate50 = const TextMaterialColorAttribute(TailwindColors.slate, 50);

  final slate100 = const TextMaterialColorAttribute(TailwindColors.slate, 100);

  final slate200 = const TextMaterialColorAttribute(TailwindColors.slate, 200);

  final slate300 = const TextMaterialColorAttribute(TailwindColors.slate, 300);

  final slate400 = const TextMaterialColorAttribute(TailwindColors.slate, 400);

  final slate500 = const TextMaterialColorAttribute(TailwindColors.slate, 500);

  final slate600 = const TextMaterialColorAttribute(TailwindColors.slate, 600);

  final slate700 = const TextMaterialColorAttribute(TailwindColors.slate, 700);

  final slate800 = const TextMaterialColorAttribute(TailwindColors.slate, 800);

  final slate900 = const TextMaterialColorAttribute(TailwindColors.slate, 900);

  final grey50 = const TextMaterialColorAttribute(TailwindColors.grey, 50);

  final grey100 = const TextMaterialColorAttribute(TailwindColors.grey, 100);

  final grey200 = const TextMaterialColorAttribute(TailwindColors.grey, 200);

  final grey300 = const TextMaterialColorAttribute(TailwindColors.grey, 300);

  final grey400 = const TextMaterialColorAttribute(TailwindColors.grey, 400);

  final grey500 = const TextMaterialColorAttribute(TailwindColors.grey, 500);

  final grey600 = const TextMaterialColorAttribute(TailwindColors.grey, 600);

  final grey700 = const TextMaterialColorAttribute(TailwindColors.grey, 700);

  final grey800 = const TextMaterialColorAttribute(TailwindColors.grey, 800);

  final grey900 = const TextMaterialColorAttribute(TailwindColors.grey, 900);

  final gray50 = const TextMaterialColorAttribute(TailwindColors.gray, 50);

  final gray100 = const TextMaterialColorAttribute(TailwindColors.gray, 100);

  final gray200 = const TextMaterialColorAttribute(TailwindColors.gray, 200);

  final gray300 = const TextMaterialColorAttribute(TailwindColors.gray, 300);

  final gray400 = const TextMaterialColorAttribute(TailwindColors.gray, 400);

  final gray500 = const TextMaterialColorAttribute(TailwindColors.gray, 500);

  final gray600 = const TextMaterialColorAttribute(TailwindColors.gray, 600);

  final gray700 = const TextMaterialColorAttribute(TailwindColors.gray, 700);

  final gray800 = const TextMaterialColorAttribute(TailwindColors.gray, 800);

  final gray900 = const TextMaterialColorAttribute(TailwindColors.gray, 900);

  final zinc50 = const TextMaterialColorAttribute(TailwindColors.zinc, 50);

  final zinc100 = const TextMaterialColorAttribute(TailwindColors.zinc, 100);

  final zinc200 = const TextMaterialColorAttribute(TailwindColors.zinc, 200);

  final zinc300 = const TextMaterialColorAttribute(TailwindColors.zinc, 300);

  final zinc400 = const TextMaterialColorAttribute(TailwindColors.zinc, 400);

  final zinc500 = const TextMaterialColorAttribute(TailwindColors.zinc, 500);

  final zinc600 = const TextMaterialColorAttribute(TailwindColors.zinc, 600);

  final zinc700 = const TextMaterialColorAttribute(TailwindColors.zinc, 700);

  final zinc800 = const TextMaterialColorAttribute(TailwindColors.zinc, 800);

  final zinc900 = const TextMaterialColorAttribute(TailwindColors.zinc, 900);

  final neutral50 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 50);

  final neutral100 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 100);

  final neutral200 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 200);

  final neutral300 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 300);

  final neutral400 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 400);

  final neutral500 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 500);

  final neutral600 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 600);

  final neutral700 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 700);

  final neutral800 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 800);

  final neutral900 =
      const TextMaterialColorAttribute(TailwindColors.neutral, 900);

  final stone50 = const TextMaterialColorAttribute(TailwindColors.stone, 50);

  final stone100 = const TextMaterialColorAttribute(TailwindColors.stone, 100);

  final stone200 = const TextMaterialColorAttribute(TailwindColors.stone, 200);

  final stone300 = const TextMaterialColorAttribute(TailwindColors.stone, 300);

  final stone400 = const TextMaterialColorAttribute(TailwindColors.stone, 400);

  final stone500 = const TextMaterialColorAttribute(TailwindColors.stone, 500);

  final stone600 = const TextMaterialColorAttribute(TailwindColors.stone, 600);

  final stone700 = const TextMaterialColorAttribute(TailwindColors.stone, 700);

  final stone800 = const TextMaterialColorAttribute(TailwindColors.stone, 800);

  final stone900 = const TextMaterialColorAttribute(TailwindColors.stone, 900);

  final red50 = const TextMaterialColorAttribute(TailwindColors.red, 50);

  final red100 = const TextMaterialColorAttribute(TailwindColors.red, 100);

  final red200 = const TextMaterialColorAttribute(TailwindColors.red, 200);

  final red300 = const TextMaterialColorAttribute(TailwindColors.red, 300);

  final red400 = const TextMaterialColorAttribute(TailwindColors.red, 400);

  final red500 = const TextMaterialColorAttribute(TailwindColors.red, 500);

  final red600 = const TextMaterialColorAttribute(TailwindColors.red, 600);

  final red700 = const TextMaterialColorAttribute(TailwindColors.red, 700);

  final red800 = const TextMaterialColorAttribute(TailwindColors.red, 800);

  final red900 = const TextMaterialColorAttribute(TailwindColors.red, 900);

  final orange50 = const TextMaterialColorAttribute(TailwindColors.orange, 50);

  final orange100 =
      const TextMaterialColorAttribute(TailwindColors.orange, 100);

  final orange200 =
      const TextMaterialColorAttribute(TailwindColors.orange, 200);

  final orange300 =
      const TextMaterialColorAttribute(TailwindColors.orange, 300);

  final orange400 =
      const TextMaterialColorAttribute(TailwindColors.orange, 400);

  final orange500 =
      const TextMaterialColorAttribute(TailwindColors.orange, 500);

  final orange600 =
      const TextMaterialColorAttribute(TailwindColors.orange, 600);

  final orange700 =
      const TextMaterialColorAttribute(TailwindColors.orange, 700);

  final orange800 =
      const TextMaterialColorAttribute(TailwindColors.orange, 800);

  final orange900 =
      const TextMaterialColorAttribute(TailwindColors.orange, 900);

  final amber50 = const TextMaterialColorAttribute(TailwindColors.amber, 50);

  final amber100 = const TextMaterialColorAttribute(TailwindColors.amber, 100);

  final amber200 = const TextMaterialColorAttribute(TailwindColors.amber, 200);

  final amber300 = const TextMaterialColorAttribute(TailwindColors.amber, 300);

  final amber400 = const TextMaterialColorAttribute(TailwindColors.amber, 400);

  final amber500 = const TextMaterialColorAttribute(TailwindColors.amber, 500);

  final amber600 = const TextMaterialColorAttribute(TailwindColors.amber, 600);

  final amber700 = const TextMaterialColorAttribute(TailwindColors.amber, 700);

  final amber800 = const TextMaterialColorAttribute(TailwindColors.amber, 800);

  final amber900 = const TextMaterialColorAttribute(TailwindColors.amber, 900);

  final yellow50 = const TextMaterialColorAttribute(TailwindColors.yellow, 50);

  final yellow100 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 100);

  final yellow200 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 200);

  final yellow300 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 300);

  final yellow400 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 400);

  final yellow500 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 500);

  final yellow600 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 600);

  final yellow700 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 700);

  final yellow800 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 800);

  final yellow900 =
      const TextMaterialColorAttribute(TailwindColors.yellow, 900);

  final lime50 = const TextMaterialColorAttribute(TailwindColors.lime, 50);

  final lime100 = const TextMaterialColorAttribute(TailwindColors.lime, 100);

  final lime200 = const TextMaterialColorAttribute(TailwindColors.lime, 200);

  final lime300 = const TextMaterialColorAttribute(TailwindColors.lime, 300);

  final lime400 = const TextMaterialColorAttribute(TailwindColors.lime, 400);

  final lime500 = const TextMaterialColorAttribute(TailwindColors.lime, 500);

  final lime600 = const TextMaterialColorAttribute(TailwindColors.lime, 600);

  final lime700 = const TextMaterialColorAttribute(TailwindColors.lime, 700);

  final lime800 = const TextMaterialColorAttribute(TailwindColors.lime, 800);

  final lime900 = const TextMaterialColorAttribute(TailwindColors.lime, 900);

  final green50 = const TextMaterialColorAttribute(TailwindColors.green, 50);

  final green100 = const TextMaterialColorAttribute(TailwindColors.green, 100);

  final green200 = const TextMaterialColorAttribute(TailwindColors.green, 200);

  final green300 = const TextMaterialColorAttribute(TailwindColors.green, 300);

  final green400 = const TextMaterialColorAttribute(TailwindColors.green, 400);

  final green500 = const TextMaterialColorAttribute(TailwindColors.green, 500);

  final green600 = const TextMaterialColorAttribute(TailwindColors.green, 600);

  final green700 = const TextMaterialColorAttribute(TailwindColors.green, 700);

  final green800 = const TextMaterialColorAttribute(TailwindColors.green, 800);

  final green900 = const TextMaterialColorAttribute(TailwindColors.green, 900);

  final emerald50 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 50);

  final emerald100 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 100);

  final emerald200 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 200);

  final emerald300 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 300);

  final emerald400 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 400);

  final emerald500 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 500);

  final emerald600 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 600);

  final emerald700 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 700);

  final emerald800 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 800);

  final emerald900 =
      const TextMaterialColorAttribute(TailwindColors.emerald, 900);

  final teal50 = const TextMaterialColorAttribute(TailwindColors.teal, 50);

  final teal100 = const TextMaterialColorAttribute(TailwindColors.teal, 100);

  final teal200 = const TextMaterialColorAttribute(TailwindColors.teal, 200);

  final teal300 = const TextMaterialColorAttribute(TailwindColors.teal, 300);

  final teal400 = const TextMaterialColorAttribute(TailwindColors.teal, 400);

  final teal500 = const TextMaterialColorAttribute(TailwindColors.teal, 500);

  final teal600 = const TextMaterialColorAttribute(TailwindColors.teal, 600);

  final teal700 = const TextMaterialColorAttribute(TailwindColors.teal, 700);

  final teal800 = const TextMaterialColorAttribute(TailwindColors.teal, 800);

  final teal900 = const TextMaterialColorAttribute(TailwindColors.teal, 900);

  final cyan50 = const TextMaterialColorAttribute(TailwindColors.cyan, 50);

  final cyan100 = const TextMaterialColorAttribute(TailwindColors.cyan, 100);

  final cyan200 = const TextMaterialColorAttribute(TailwindColors.cyan, 200);

  final cyan300 = const TextMaterialColorAttribute(TailwindColors.cyan, 300);

  final cyan400 = const TextMaterialColorAttribute(TailwindColors.cyan, 400);

  final cyan500 = const TextMaterialColorAttribute(TailwindColors.cyan, 500);

  final cyan600 = const TextMaterialColorAttribute(TailwindColors.cyan, 600);

  final cyan700 = const TextMaterialColorAttribute(TailwindColors.cyan, 700);

  final cyan800 = const TextMaterialColorAttribute(TailwindColors.cyan, 800);

  final cyan900 = const TextMaterialColorAttribute(TailwindColors.cyan, 900);

  final sky50 = const TextMaterialColorAttribute(TailwindColors.sky, 50);

  final sky100 = const TextMaterialColorAttribute(TailwindColors.sky, 100);

  final sky200 = const TextMaterialColorAttribute(TailwindColors.sky, 200);

  final sky300 = const TextMaterialColorAttribute(TailwindColors.sky, 300);

  final sky400 = const TextMaterialColorAttribute(TailwindColors.sky, 400);

  final sky500 = const TextMaterialColorAttribute(TailwindColors.sky, 500);

  final sky600 = const TextMaterialColorAttribute(TailwindColors.sky, 600);

  final sky700 = const TextMaterialColorAttribute(TailwindColors.sky, 700);

  final sky800 = const TextMaterialColorAttribute(TailwindColors.sky, 800);

  final sky900 = const TextMaterialColorAttribute(TailwindColors.sky, 900);

  final blue50 = const TextMaterialColorAttribute(TailwindColors.blue, 50);

  final blue100 = const TextMaterialColorAttribute(TailwindColors.blue, 100);

  final blue200 = const TextMaterialColorAttribute(TailwindColors.blue, 200);

  final blue300 = const TextMaterialColorAttribute(TailwindColors.blue, 300);

  final blue400 = const TextMaterialColorAttribute(TailwindColors.blue, 400);

  final blue500 = const TextMaterialColorAttribute(TailwindColors.blue, 500);

  final blue600 = const TextMaterialColorAttribute(TailwindColors.blue, 600);

  final blue700 = const TextMaterialColorAttribute(TailwindColors.blue, 700);

  final blue800 = const TextMaterialColorAttribute(TailwindColors.blue, 800);

  final blue900 = const TextMaterialColorAttribute(TailwindColors.blue, 900);

  final indigo50 = const TextMaterialColorAttribute(TailwindColors.indigo, 50);

  final indigo100 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 100);

  final indigo200 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 200);

  final indigo300 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 300);

  final indigo400 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 400);

  final indigo500 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 500);

  final indigo600 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 600);

  final indigo700 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 700);

  final indigo800 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 800);

  final indigo900 =
      const TextMaterialColorAttribute(TailwindColors.indigo, 900);

  final violet50 = const TextMaterialColorAttribute(TailwindColors.violet, 50);

  final violet100 =
      const TextMaterialColorAttribute(TailwindColors.violet, 100);

  final violet200 =
      const TextMaterialColorAttribute(TailwindColors.violet, 200);

  final violet300 =
      const TextMaterialColorAttribute(TailwindColors.violet, 300);

  final violet400 =
      const TextMaterialColorAttribute(TailwindColors.violet, 400);

  final violet500 =
      const TextMaterialColorAttribute(TailwindColors.violet, 500);

  final violet600 =
      const TextMaterialColorAttribute(TailwindColors.violet, 600);

  final violet700 =
      const TextMaterialColorAttribute(TailwindColors.violet, 700);

  final violet800 =
      const TextMaterialColorAttribute(TailwindColors.violet, 800);

  final violet900 =
      const TextMaterialColorAttribute(TailwindColors.violet, 900);

  final purple50 = const TextMaterialColorAttribute(TailwindColors.purple, 50);

  final purple100 =
      const TextMaterialColorAttribute(TailwindColors.purple, 100);

  final purple200 =
      const TextMaterialColorAttribute(TailwindColors.purple, 200);

  final purple300 =
      const TextMaterialColorAttribute(TailwindColors.purple, 300);

  final purple400 =
      const TextMaterialColorAttribute(TailwindColors.purple, 400);

  final purple500 =
      const TextMaterialColorAttribute(TailwindColors.purple, 500);

  final purple600 =
      const TextMaterialColorAttribute(TailwindColors.purple, 600);

  final purple700 =
      const TextMaterialColorAttribute(TailwindColors.purple, 700);

  final purple800 =
      const TextMaterialColorAttribute(TailwindColors.purple, 800);

  final purple900 =
      const TextMaterialColorAttribute(TailwindColors.purple, 900);

  final fuchsia50 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 50);

  final fuchsia100 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 100);

  final fuchsia200 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 200);

  final fuchsia300 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 300);

  final fuchsia400 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 400);

  final fuchsia500 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 500);

  final fuchsia600 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 600);

  final fuchsia700 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 700);

  final fuchsia800 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 800);

  final fuchsia900 =
      const TextMaterialColorAttribute(TailwindColors.fuchsia, 900);

  final pink50 = const TextMaterialColorAttribute(TailwindColors.pink, 50);

  final pink100 = const TextMaterialColorAttribute(TailwindColors.pink, 100);

  final pink200 = const TextMaterialColorAttribute(TailwindColors.pink, 200);

  final pink300 = const TextMaterialColorAttribute(TailwindColors.pink, 300);

  final pink400 = const TextMaterialColorAttribute(TailwindColors.pink, 400);

  final pink500 = const TextMaterialColorAttribute(TailwindColors.pink, 500);

  final pink600 = const TextMaterialColorAttribute(TailwindColors.pink, 600);

  final pink700 = const TextMaterialColorAttribute(TailwindColors.pink, 700);

  final pink800 = const TextMaterialColorAttribute(TailwindColors.pink, 800);

  final pink900 = const TextMaterialColorAttribute(TailwindColors.pink, 900);

  final rose50 = const TextMaterialColorAttribute(TailwindColors.rose, 50);

  final rose100 = const TextMaterialColorAttribute(TailwindColors.rose, 100);

  final rose200 = const TextMaterialColorAttribute(TailwindColors.rose, 200);

  final rose300 = const TextMaterialColorAttribute(TailwindColors.rose, 300);

  final rose400 = const TextMaterialColorAttribute(TailwindColors.rose, 400);

  final rose500 = const TextMaterialColorAttribute(TailwindColors.rose, 500);

  final rose600 = const TextMaterialColorAttribute(TailwindColors.rose, 600);

  final rose700 = const TextMaterialColorAttribute(TailwindColors.rose, 700);

  final rose800 = const TextMaterialColorAttribute(TailwindColors.rose, 800);

  final rose900 = const TextMaterialColorAttribute(TailwindColors.rose, 900);

  TextSizeAttribute size(double size) => TextSizeAttribute(size: size);

  TextMaterialColorAttribute slate(int shade) =>
      TextMaterialColorAttribute(TailwindColors.slate, shade);

  TextMaterialColorAttribute grey(int shade) =>
      TextMaterialColorAttribute(TailwindColors.grey, shade);

  TextMaterialColorAttribute gray(int shade) =>
      TextMaterialColorAttribute(TailwindColors.gray, shade);

  TextMaterialColorAttribute zinc(int shade) =>
      TextMaterialColorAttribute(TailwindColors.zinc, shade);

  TextMaterialColorAttribute neutral(int shade) =>
      TextMaterialColorAttribute(TailwindColors.neutral, shade);

  TextMaterialColorAttribute stone(int shade) =>
      TextMaterialColorAttribute(TailwindColors.stone, shade);

  TextMaterialColorAttribute red(int shade) =>
      TextMaterialColorAttribute(TailwindColors.red, shade);

  TextMaterialColorAttribute orange(int shade) =>
      TextMaterialColorAttribute(TailwindColors.orange, shade);

  TextMaterialColorAttribute amber(int shade) =>
      TextMaterialColorAttribute(TailwindColors.amber, shade);

  TextMaterialColorAttribute yellow(int shade) =>
      TextMaterialColorAttribute(TailwindColors.yellow, shade);

  TextMaterialColorAttribute lime(int shade) =>
      TextMaterialColorAttribute(TailwindColors.lime, shade);

  TextMaterialColorAttribute green(int shade) =>
      TextMaterialColorAttribute(TailwindColors.green, shade);

  TextMaterialColorAttribute emerald(int shade) =>
      TextMaterialColorAttribute(TailwindColors.emerald, shade);

  TextMaterialColorAttribute teal(int shade) =>
      TextMaterialColorAttribute(TailwindColors.teal, shade);

  TextMaterialColorAttribute cyan(int shade) =>
      TextMaterialColorAttribute(TailwindColors.cyan, shade);

  TextMaterialColorAttribute sky(int shade) =>
      TextMaterialColorAttribute(TailwindColors.sky, shade);

  TextMaterialColorAttribute blue(int shade) =>
      TextMaterialColorAttribute(TailwindColors.blue, shade);

  TextMaterialColorAttribute indigo(int shade) =>
      TextMaterialColorAttribute(TailwindColors.indigo, shade);

  TextMaterialColorAttribute violet(int shade) =>
      TextMaterialColorAttribute(TailwindColors.violet, shade);

  TextMaterialColorAttribute purple(int shade) =>
      TextMaterialColorAttribute(TailwindColors.purple, shade);

  TextMaterialColorAttribute fuchsia(int shade) =>
      TextMaterialColorAttribute(TailwindColors.fuchsia, shade);

  TextMaterialColorAttribute pink(int shade) =>
      TextMaterialColorAttribute(TailwindColors.pink, shade);

  TextMaterialColorAttribute rose(int shade) =>
      TextMaterialColorAttribute(TailwindColors.rose, shade);
}

class _FontAttributes {
  const _FontAttributes();

  final sans = const TextFontFamilyAttribute('Graphik');

  final serif = const TextFontFamilyAttribute('Merriweather');

  final thin = const TextWeightAttribute(FontWeight.w100);

  final extralight = const TextWeightAttribute(FontWeight.w200);

  final light = const TextWeightAttribute(FontWeight.w300);

  final normal = const TextWeightAttribute(FontWeight.w400);

  final medium = const TextWeightAttribute(FontWeight.w500);

  final semiBold = const TextWeightAttribute(FontWeight.w600);

  final bold = const TextWeightAttribute(FontWeight.w700);

  final extraBold = const TextWeightAttribute(FontWeight.w800);

  final black = const TextWeightAttribute(FontWeight.w900);

  final w100 = const TextWeightAttribute(FontWeight.w100);

  final w200 = const TextWeightAttribute(FontWeight.w200);

  final w300 = const TextWeightAttribute(FontWeight.w300);

  final w400 = const TextWeightAttribute(FontWeight.w400);

  final w500 = const TextWeightAttribute(FontWeight.w500);

  final w600 = const TextWeightAttribute(FontWeight.w600);

  final w700 = const TextWeightAttribute(FontWeight.w700);

  final w800 = const TextWeightAttribute(FontWeight.w800);

  final w900 = const TextWeightAttribute(FontWeight.w900);

  final italic = const TextStyleAttribute.italic();

  final notItalic = const TextStyleAttribute.notItalic();

  TextFontFamilyAttribute family(String family) =>
      TextFontFamilyAttribute(family);

  TextWeightAttribute weight(FontWeight weight) => TextWeightAttribute(weight);
}
