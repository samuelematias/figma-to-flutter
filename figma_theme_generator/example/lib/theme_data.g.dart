import 'package:flutter/widgets.dart';
import 'package:collection/collection.dart';

class ExampleData {
  const ExampleData(
      {@required this.colors,
      @required this.text,
      @required this.gradients,
      @required this.shadows})
      : assert(colors != null),
        assert(text != null),
        assert(gradients != null),
        assert(shadows != null);

  factory ExampleData.fallback() => ExampleData(
        colors: ExampleColorData.fallback(),
        text: ExampleTextData.fallback(),
        gradients: ExampleGradientData.fallback(),
        shadows: ExampleShadowData.fallback(),
      );

  final ExampleColorData colors;

  final ExampleTextData text;

  final ExampleGradientData gradients;

  final ExampleShadowData shadows;

  ExampleData copyWith(
          {ExampleColorData colors,
          ExampleTextData text,
          ExampleGradientData gradients,
          ExampleShadowData shadows}) =>
      ExampleData(
        colors: colors ?? this.colors,
        text: text ?? this.text,
        gradients: gradients ?? this.gradients,
        shadows: shadows ?? this.shadows,
      );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleData &&
          colors == other.colors &&
          text == other.text &&
          gradients == other.gradients &&
          shadows == other.shadows);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(colors) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(gradients) ^
      const DeepCollectionEquality().hash(shadows);
}

class ExampleColorData {
  const ExampleColorData(
      {@required this.red,
      @required this.blue,
      @required this.green,
      @required this.black})
      : assert(red != null),
        assert(blue != null),
        assert(green != null),
        assert(black != null);

  factory ExampleColorData.fallback() => const ExampleColorData(
        red: Color.fromARGB(255, 255, 93, 93),
        blue: Color.fromARGB(255, 108, 128, 230),
        green: Color.fromARGB(255, 108, 230, 157),
        black: Color.fromARGB(255, 35, 35, 35),
      );

  final Color red;

  final Color blue;

  final Color green;

  final Color black;

  ExampleColorData copyWith(
          {Color red, Color blue, Color green, Color black}) =>
      ExampleColorData(
        red: red ?? this.red,
        blue: blue ?? this.blue,
        green: green ?? this.green,
        black: black ?? this.black,
      );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleColorData &&
          red == other.red &&
          blue == other.blue &&
          green == other.green &&
          black == other.black);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(red) ^
      const DeepCollectionEquality().hash(blue) ^
      const DeepCollectionEquality().hash(green) ^
      const DeepCollectionEquality().hash(black);
}

class ExampleTextData {
  const ExampleTextData(
      {@required this.title, @required this.subtitle, @required this.paragraph})
      : assert(title != null),
        assert(subtitle != null),
        assert(paragraph != null);

  factory ExampleTextData.fallback() => const ExampleTextData(
        title: TextStyle(
          fontFamily: 'Menlo',
          fontSize: 32.00,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 108, 128, 230),
        ),
        subtitle: TextStyle(
          fontFamily: 'Menlo',
          fontSize: 20.00,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 255, 93, 93),
        ),
        paragraph: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12.00,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 35, 35, 35),
        ),
      );

  final TextStyle title;

  final TextStyle subtitle;

  final TextStyle paragraph;

  ExampleTextData copyWith(
          {TextStyle title, TextStyle subtitle, TextStyle paragraph}) =>
      ExampleTextData(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        paragraph: paragraph ?? this.paragraph,
      );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleTextData &&
          title == other.title &&
          subtitle == other.subtitle &&
          paragraph == other.paragraph);
  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(subtitle) ^
      const DeepCollectionEquality().hash(paragraph);
}

class ExampleGradientData {
  const ExampleGradientData({@required this.gradient})
      : assert(gradient != null);

  factory ExampleGradientData.fallback() => const ExampleGradientData(
        gradient: LinearGradient(
          begin: Alignment(-1.00, -1.00),
          end: Alignment(0.79, 1.00),
          stops: [
            0.00,
            1.00,
          ],
          colors: [
            Color.fromARGB(255, 117, 63, 206),
            Color.fromARGB(255, 255, 100, 100),
          ],
          tileMode: TileMode.clamp,
        ),
      );

  final LinearGradient gradient;

  ExampleGradientData copyWith({LinearGradient gradient}) =>
      ExampleGradientData(
        gradient: gradient ?? this.gradient,
      );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleGradientData && gradient == other.gradient);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradient);
}

class ExampleShadowData {
  const ExampleShadowData({@required this.drop}) : assert(drop != null);

  factory ExampleShadowData.fallback() => const ExampleShadowData(
        drop: BoxShadow(
          color: Color.fromARGB(63, 0, 0, 0),
          blurRadius: 7,
          offset: Offset(6, 7),
          spreadRadius: 7,
        ),
      );

  final BoxShadow drop;

  ExampleShadowData copyWith({BoxShadow drop}) => ExampleShadowData(
        drop: drop ?? this.drop,
      );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleShadowData && drop == other.drop);
  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(drop);
}