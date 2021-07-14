import 'dart:math';

/// utils for random variable interactions
class RandomUtils {
  /// return a random string from a string array
  static dynamic arrayElement(List<dynamic>? list) {
    if (list == null) return '';
    final random = Random().nextInt(list.length);
    return list[random];
  }

  /// return a random [count] of items from a provided [list]
  static List arrayElements(List? list, int count) {
    if (list == null) return [];

    final newlist = [];
    for (var i = 0; i < count; i++) {
      newlist.add(list[Random().nextInt(list.length)]);
    }

    return newlist;
  }
}
