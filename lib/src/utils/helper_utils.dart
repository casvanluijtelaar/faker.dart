import 'dart:math';

import 'package:faker_dart/src/utils/random_utils.dart';
// ignore_for_file: public_member_api_docs

/// helper methods for string interactions
class HelperUtils {
  static String replaceSymbolWithNumber(String string) {
    var replacement = '';

    for (var i = 0; i < string.length; i++) {
      replacement += string[i] == '#' 
          ? Random().nextInt(9).toString() 
          : string[i];
    }

    return replacement;
  }

  static String replaceSymbols(String string) {
    final alphabet = [
      ...['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'],
      ...['N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'],
    ];
    var replacement = '';

    for (var i = 0; i < string.length; i++) {
       replacement += string[i] == '#' 
          ? RandomUtils.arrayElement(alphabet)
          : string[i];
    }
    return replacement;
  }

/* 
  String replaceCreditCardSymbols(String string) => string; */

  static String repeatString(String string, int amount) {
    var text = '';
    for (var i = 0; i < amount; i++) {
      text += string;
    }
    return text;
  }


}
