import 'package:faker_dart/src/image_providers/unsplash.dart';
import 'package:test/test.dart';

void main() {
  final unsplash = Unsplash();

  test('get image with keyword', () {
    final image = unsplash.image(keyword: 'bike');
    expect(image.contains('?bike'), isTrue);
  });

  test('get food image', () {
    final image = unsplash.food();
    expect(image.contains('/category/food'), isTrue);
  });
  test('get people image', () {
    final image = unsplash.people();
    expect(image.contains('/category/people'), isTrue);
  });
  test('get nature image', () {
    final image = unsplash.nature();
    expect(image.contains('/category/nature'), isTrue);
  });
  test('get technology image', () {
    final image = unsplash.technology();
    expect(image.contains('/category/technology'), isTrue);
  });
  test('get objects image', () {
    final image = unsplash.objects();
    expect(image.contains('/category/objects'), isTrue);
  });
  test('get buildings image', () {
    final image = unsplash.buildings();
    expect(image.contains('/category/buildings'), isTrue);
  });
}
