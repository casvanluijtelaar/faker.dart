import 'package:faker_dart/src/utils/locale_utils.dart';
import 'package:test/test.dart';

void main() {
  test('get correct locale', () {
    final result = LocaleUtils.generateLocale(FakerLocaleType.zu_ZA);
    expect(result.commerce.department!.isNotEmpty, isTrue);
  });

  test('test all intenal locales return valid FakerLocales', () {
    const locales = FakerLocaleType.values;

    for (final locale in locales) {
      final result = LocaleUtils.generateLocale(locale);
      expect(result.commerce.department!.isNotEmpty, isTrue);
    }
  });
}
