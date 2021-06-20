class Helpers {
  static String slugify(String string) => string
      .replaceAll(RegExp(r'/ /g'), '-')
      .replaceAll(RegExp(r'/[^\一-龠\ぁ-ゔ\ァ-ヴー\w\.\-]+/g'), '');

  static String replaceSymbolWithNumber(String string) {
    final symbol = '#';
    var replacement = '';

    for (int i = 0; i < string.length; i++) {
      if(string[i] == symbol)
    }
  }
}
