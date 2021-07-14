import 'package:faker_dart/src/utils/helper_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('replaceSymbolWithNumber', () {
    final result = HelperUtils.replaceSymbolWithNumber('####');
    expect(!result.contains('#'), isTrue);
  });
}
