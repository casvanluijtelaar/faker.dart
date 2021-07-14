import 'dart:math';

import 'package:faker_dart/src/utils/random_utils.dart';
// ignore_for_file: public_member_api_docs

/// helper methods for string interactions
class HelperUtils {

  static String replaceSymbolWithNumber(String string) {
    var replacement = '';

    for (var i = 0; i < string.length; i++) {
      if (string[i] == '#') {
        replacement += Random().nextInt(9).toString();
      } else if (string[i] == '!') {
        replacement += (2 + Random().nextInt(9)).toString();
      } else {
        replacement += string[i];
      }
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
      if (string[i] == '#') {
        replacement += Random().nextInt(9).toString();
      } else if (string[i] == '?') {
        replacement += RandomUtils.arrayElement(alphabet);
      } else if (string[i] == '*') {
        replacement += Random().nextBool()
            ? RandomUtils.arrayElement(alphabet)
            : Random().nextInt(9).toString();
      } else {
        replacement += string[i];
      }
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

/*   String regexpStyleStringParse(String string) {
    final rangeRepReg = r'/(.)\{(\d+)\,(\d+)\}/';
    final repReg = r'/(.)\{(\d+)\}/';
    final rangeReg = r'/\[(\d+)\-(\d+)\]/';

    var min, max, tmp, repetitions;
    var token =
        RegExp(rangeRepReg).allMatches(string).map((e) => e[0]!).toList();

    while (token.isNotEmpty) {
      min = int.parse(token[2]);
      max = int.parse(token[3]);

      if (min > max) {
        tmp = max;
        max = min;
        min = tmp;
      }

      repetitions = faker.dataType.number(min: min, max: max);
      string = string.substring(0, token.length) 
        + repeatString(token[1], repetitions);
    }
  } */

  static List<dynamic> shuffle(List o) {
    for (int x, j, i = o.length - 1; i > 0; --i) {
      j = Random().nextInt(i);
      x = o[i];
      o[i] = o[j];
      o[j] = x;
    }
    return o;
  }

  static String mustache(String string, Map data) {
    var output = '';
    for (var p in data.keys) {
      var re = RegExp('{{$p}}', dotAll: true);
      output = string.replaceAll(re, data[p]);
    }
    return output;
  }
}
