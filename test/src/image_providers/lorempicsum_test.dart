import 'package:faker_dart/src/image_providers/lorempicsum.dart';
import 'package:test/test.dart';

void main() {
  late LoremPicsum loremPicsum;

  setUp(() => loremPicsum = LoremPicsum());
  test('get image with seed', () {
    final result1 = loremPicsum.image(seed: '578', blur: 1, grayscale: true);
    expect(result1.contains('/seed/578'), isTrue);
  });

  test('get image with blur', () {
    final result1 = loremPicsum.blurredImage(blur: 2);
    expect(result1.contains('blur=2'), isTrue);
  });

  test('get image with grayscale', () {
    final result1 = loremPicsum.grayImage();
    expect(result1.contains('grayscale'), isTrue);
  });

  test('get image with grayscale & blur', () {
    final result1 = loremPicsum.grayImage();
    expect(result1.contains('grayscale'), isTrue);
  });
}
