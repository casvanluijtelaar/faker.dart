import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/image_providers/lorempicsum.dart';
import 'package:faker_dart/src/image_providers/lorempixel.dart'
    hide LoremPixelCategory;
import 'package:faker_dart/src/image_providers/unsplash.dart'
    hide UnsplashCategory;

/// {@macro image}
class Image {
  /// {@macro image}
  Image(this._faker);

  final Faker _faker;

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

  /// returns a random image from a random image provider
  String image({int? width, int? height}) {
    final chance = _faker.datatype.number(max: 2);

    if (chance == 0) return unsplash.image(w: width, h: height);
    if (chance == 1) return loremPixel.image(width: width, height: height);
    return loremPicsum.image(width: width, height: height);
  }
}
