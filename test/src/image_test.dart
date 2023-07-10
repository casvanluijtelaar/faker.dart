import 'package:faker_dart/src/image.dart';
import 'package:test/test.dart';

void main() {
  late Image image;

  setUp(() {
    image = Image();
  });

  test('image returns a valid url', () {
    final unsplash = image.image();
    expect(unsplash.contains('picsum'), isTrue);
  });
}
