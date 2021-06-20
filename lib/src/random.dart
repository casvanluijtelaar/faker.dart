import 'dart:math';

class Randoms {
  static dynamic arrayElement(List list) {
    final random = Random().nextInt(list.length);
    return list[random];
  }

static List arrayElements(List list, int count) {
    final random = Random().nextInt(list.length);
    return list[random];
  }

}
