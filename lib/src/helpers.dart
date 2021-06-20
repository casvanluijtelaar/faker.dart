import 'dart:math';

class Helpers {
  static String slugify(String string) => string
      .replaceAll(RegExp(r'/ /g'), '-')
      .replaceAll(RegExp(r'/[^\一-龠\ぁ-ゔ\ァ-ヴー\w\.\-]+/g'), '');

  static String replaceSymbolWithNumber(String string) {
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
    final alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
    var replacement = '';

     for (var i = 0; i < string.length; i++) {
          if (string[i] == "#") {
              replacement += Random().nextInt(9).toString();
          } else if (string[i] == "?") {
              replacement += faker.random.arrayElement(alpha);
          } else if (string.charAt(i) == "*") {
            str += faker.datatype.boolean() ? faker.random.arrayElement(alpha) : faker.datatype.number(9);
          } else {
              str += string.charAt(i);
          }
      }
      return str;
  }
}
