import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/models/faker_locale.dart';
import 'package:faker_dart/src/utils/locale_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get correct locale', () {
    final result = LocaleUtils.generateLocale(FakerLocaleType.zu_ZA);

    expect(result is FakerLocale, isTrue);
    expect(result.commerce.department!.isNotEmpty, isTrue);
  });
}
