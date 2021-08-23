import 'package:faker_dart/src/utils/helper_utils.dart';
import 'package:test/test.dart';

void main() {
  test('replaceSymbolWithNumber', () {
    final result = HelperUtils.replaceSymbolWithNumber('####');
    expect(!result.contains('#'), isTrue);
    expect(int.tryParse(result), isNotNull);
  });

  test('replaceSymbols', () {
    final result = HelperUtils.replaceSymbols('####');
    expect(!result.contains('#'), isTrue);
    expect(int.tryParse(result), isNull);
  });

  test('repeatString', () {
    final result = HelperUtils.repeatString('a', 4);
    expect(result, 'aaaa');
  });
}
