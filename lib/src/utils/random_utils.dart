import 'dart:math';

/// utils for random variable interactions
class RandomUtils {
  /// return a random string from a string array
  static String arrayElement(List<String>? list) {
    if (list == null) return '';
    final random = Random().nextInt(list.length);
    return list[random];
  }

  /// return a random [count] of items from a provided [list]
  static List arrayElements(List? list, int count) {
    if (list == null) return [];
    final random = Random().nextInt(list.length);
    return list[random];
  }
}
