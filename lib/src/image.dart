import 'package:faker_dart/src/image_providers/lorempicsum.dart';

/// {@macro image}
class Image {
  /// {@template loremPicsum}
  /// generate rondom image urls from loremPicsum
  /// {@endtemplate}
  final LoremPicsum loremPicsum = LoremPicsum();

  /// returns a random image from a random image provider
  String image({int? width, int? height}) {
    return loremPicsum.image(width: width, height: height);
  }
}
