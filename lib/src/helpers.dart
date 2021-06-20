import 'dart:math';

import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/random.dart';

class Helpers {
  const Helpers(this.faker);

  final Faker faker;

  String slugify(String string) => string
      .replaceAll(RegExp(r'/ /g'), '-')
      .replaceAll(RegExp(r'/[^\一-龠\ぁ-ゔ\ァ-ヴー\w\.\-]+/g'), '');

  String replaceSymbolWithNumber(String string) {
    var replacement = '';

    for (int i = 0; i < string.length; i++) {
      if (string[i] == '#') {
        replacement += Random().nextInt(9).toString();
      } else if (string[i] == "!") {
        replacement += (2 + Random().nextInt(9)).toString();
      } else {
        replacement += string[i];
      }
    }
    return replacement;
  }

  String replaceSymbols(String string) {
    final alphabet = [
      ...['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'],
      ...['N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'],
    ];
    var replacement = '';

    for (var i = 0; i < string.length; i++) {
      if (string[i] == "#") {
        replacement += faker.datatype.number(max: 9).toString();
      } else if (string[i] == "?") {
        replacement += Randoms.arrayElement(alphabet);
      } else if (string[i] == "*") {
        replacement += faker.datatype.boolean()
            ? Randoms.arrayElement(alphabet)
            : faker.datatype.number(max: 9);
      } else {
        replacement += string[i];
      }
    }
    return replacement;
  }
/* 
  String replaceCreditCardSymbols(String string) => string; */

  String repeatString(String string, int amount) {
    var text = '';
    for (int i = 0; i < amount; i++) {
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
      string = string.substring(0, token.length) + repeatString(token[1], repetitions);
    }
  } */

  List<dynamic> shuffle(List o) {
    for (int x, j, i = o.length - 1; i > 0; --i) {
      j = faker.datatype.number(max: i);
      x = o[i];
      o[i] = o[j];
      o[j] = x;
    }
    return o;
  }

  String mustache(String string, Map data) {
    var output = '';
    for (var p in data.keys) {
      var re = RegExp('{{' + p + '}}', dotAll: true);
      output = string.replaceAll(re, data[p]);
    }
    return output;
  }
}
