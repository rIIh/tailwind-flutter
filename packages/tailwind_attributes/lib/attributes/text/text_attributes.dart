import 'package:flutter/material.dart';
import 'package:tailwind_attributes/attributes/attribute.dart';
import 'package:tailwind_attributes/attributes/text/tw_text.dart';

sealed class TextAttribute extends Attribute<TwTextData> {
  const TextAttribute();
}

class TextSizeAttribute extends TextAttribute {
  final double size;

  const TextSizeAttribute({required this.size});

  @override
  TwTextData apply(TwTextData value) => value..fontSize = size;
}

class TextColorAttribute extends TextAttribute {
  final Color color;

  const TextColorAttribute({required this.color});

  @override
  TwTextData apply(TwTextData value) => value..color = color;
}

class TextWeightAttribute extends TextAttribute {
  final FontWeight weight;

  const TextWeightAttribute(this.weight);

  @override
  TwTextData apply(TwTextData value) => value..fontWeight = weight;
}

class TextStyleAttribute extends TextAttribute {
  final bool italic;

  const TextStyleAttribute.italic() : italic = true;
  const TextStyleAttribute.notItalic() : italic = false;

  @override
  TwTextData apply(TwTextData value) => value
    ..fontStyle = italic //
        ? FontStyle.italic
        : FontStyle.normal;
}

// TODO(@melvspace): 06/26/24 can be shared
class TextMaterialColorAttribute extends TextAttribute {
  final MaterialColor color;
  final int shade;

  const TextMaterialColorAttribute(this.color, this.shade);

  @override
  TwTextData apply(TwTextData value) => value..color = color[shade];
}

class TextFontFamilyAttribute extends TextAttribute {
  final String family;

  const TextFontFamilyAttribute(this.family);

  @override
  TwTextData apply(TwTextData value) => value..fontFamily = family;
}
