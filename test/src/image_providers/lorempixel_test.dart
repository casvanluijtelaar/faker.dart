import 'package:faker_dart/src/image_providers/lorempixel.dart';
import 'package:test/test.dart';

void main() {
  final loremPixel = LoremPixel();

  test('return an image with random category', () {
    final image = loremPixel.image();
    expect(image.contains('https://lorempixel.com/640/480/'), isTrue);
  });

  test('abstract image', () {
    final image = loremPixel.abstract();
    expect(image.contains('abstract'), isTrue);
  });

  test('animals image', () {
    final image = loremPixel.animals();
    expect(image.contains('animals'), isTrue);
  });
  test('business image', () {
    final image = loremPixel.business();
    expect(image.contains('business'), isTrue);
  });
  test('cats image', () {
    final image = loremPixel.cats();
    expect(image.contains('cats'), isTrue);
  });
  test('city image', () {
    final image = loremPixel.city();
    expect(image.contains('city'), isTrue);
  });
  test('food image', () {
    final image = loremPixel.food();
    expect(image.contains('food'), isTrue);
  });
  test('nightlife image', () {
    final image = loremPixel.nightlife();
    expect(image.contains('nightlife'), isTrue);
  });
  test('fashion image', () {
    final image = loremPixel.fashion();
    expect(image.contains('fashion'), isTrue);
  });
  test('people image', () {
    final image = loremPixel.people();
    expect(image.contains('people'), isTrue);
  });
  test('nature image', () {
    final image = loremPixel.nature();
    expect(image.contains('nature'), isTrue);
  });
  test('sports image', () {
    final image = loremPixel.sports();
    expect(image.contains('sports'), isTrue);
  });
  test('technics image', () {
    final image = loremPixel.technics();
    expect(image.contains('technics'), isTrue);
  });
  test('transport image', () {
    final image = loremPixel.transport();
    expect(image.contains('transport'), isTrue);
  });
}
