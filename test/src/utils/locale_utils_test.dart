import 'package:faker_dart/src/models/faker_locale.dart';
import 'package:faker_dart/src/utils/locale_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get correct locale', () {
    final result = LocaleUtils.generateLocale(FakerLocaleType.zu_ZA);

    expect(result is FakerLocale, isTrue);
    expect(result.commerce.department!.isNotEmpty, isTrue);
  });

  test('test all intenal locales return valid FakerLocales', () {
    const locales = FakerLocaleType.values;

    for (final locale in locales) {
      print(locale);
      final result = LocaleUtils.generateLocale(locale);
      expect(result is FakerLocale, isTrue);
    }
  });
}
