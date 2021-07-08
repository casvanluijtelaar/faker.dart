import 'package:faker_dart/src/image_providers/lorempicsum.dart';
import 'package:faker_dart/src/image_providers/lorempixel.dart';
import 'package:faker_dart/src/image_providers/unsplash.dart';

/// {@macro image}
class Image {
  /// {@template loremPicsum}
  /// generate rondom image urls from loremPicsum
  /// {@endtemplate}
  final LoremPicsum loremPicsum = LoremPicsum();

  /// {@template loremPixel}
  /// generate rondom image urls from loremPixel
  /// {@endtemplate}
  final LoremPixel loremPixel = LoremPixel();

  /// {@template unsplash}
  /// generate rondom image urls from unsplash
  /// {@endtemplate}
  final Unsplash unsplash = Unsplash();
}
