import 'package:flutter/material.dart';
import 'package:tailwind_attributes/attributes/attribute.dart';

final class TwTextData {
  String? fontFamily;
  Color? color;
  double? scaleFactor, fontSize, letterSpacing, lineHeight, wordSpacing;
  int? maxLines;
  FontWeight? fontWeight;
  TextAlign? textAlign;
  FontStyle? fontStyle;
  TextDecoration? decoration;
  TextStyle? textStyle, themedStyle;
  StrutStyle? strutStyle;
  TextOverflow? overflow;
  TextBaseline? textBaseline;
  bool? softWrap;
}

extension TwTextX on Text {
  TwText apply(List<Attribute<TwTextData>> attributes) {
    return TwText(data!, attributes: attributes);
  }
}

class TwText extends StatelessWidget {
  final String? data;
  final InlineSpan? span;

  final List<Attribute<TwTextData>> attributes;

  const TwText(
    String this.data, {
    super.key,
    this.attributes = const [],
  }) : span = null;

  const TwText.rich(
    TextSpan this.span, {
    super.key,
    this.attributes = const [],
  }) : data = null;

  @override
  Widget build(BuildContext context) {
    final attributes = TwTextData();
    for (final attribute in this.attributes) {
      attribute.apply(attributes);
    }

    final ts = TextStyle(
      color: attributes.color,
      fontSize: attributes.fontSize,
      fontStyle: attributes.fontStyle,
      fontFamily: attributes.fontFamily,
      fontWeight: attributes.fontWeight,
      letterSpacing: attributes.letterSpacing,
      decoration: attributes.decoration,
      height: attributes.lineHeight,
      textBaseline: attributes.textBaseline ?? TextBaseline.alphabetic,
      wordSpacing: attributes.wordSpacing,
    );

    if (span case InlineSpan span) {
      return Text.rich(
        span,
        textAlign: attributes.textAlign,
        maxLines: attributes.maxLines,
        textScaler: attributes.scaleFactor == null ? null : TextScaler.linear(attributes.scaleFactor!),
        style: attributes.themedStyle?.merge(ts) ?? attributes.textStyle?.merge(ts) ?? ts,
        softWrap: attributes.softWrap ?? true,
        overflow: attributes.overflow ?? TextOverflow.clip,
        strutStyle: attributes.strutStyle,
      );
    } else {
      return Text(
        data!,
        textAlign: attributes.textAlign,
        maxLines: attributes.maxLines,
        textScaler: attributes.scaleFactor == null ? null : TextScaler.linear(attributes.scaleFactor!),
        style: attributes.themedStyle?.merge(ts) ?? attributes.textStyle?.merge(ts) ?? ts,
        softWrap: attributes.softWrap ?? true,
        overflow: attributes.overflow ?? TextOverflow.clip,
        strutStyle: attributes.strutStyle,
      );
    }
  }
}
