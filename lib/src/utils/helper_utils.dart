import 'dart:math';

import 'package:faker_dart/src/utils/random_utils.dart';
// ignore_for_file: public_member_api_docs

/// helper methods for string interactions
class HelperUtils {
  static String replaceSymbolWithNumber(String string) {
    var replacement = '';

    for (var i = 0; i < string.length; i++) {
      replacement +=
          string[i] == '#' ? Random().nextInt(9).toString() : string[i];
    }

    return replacement;
  }

  static String replaceSymbols(String string) {
    final alphabet = [
      ...['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'],
      ...['N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'],
    ];
    final numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];

    var replacement = '';
    for (final char in string.split('')) {
      switch (char) {
        case '#':
          replacement += RandomUtils.arrayElement(numbers);
          break;
        case '?':
          replacement += RandomUtils.arrayElement(alphabet);
          break;
        default:
          replacement += char;
          break;
      }
    }
    return replacement;
  }

  static String repeatString(String string, int amount) {
    var text = '';
    for (var i = 0; i < amount; i++) {
      text += string;
    }
    return text;
  }
}
