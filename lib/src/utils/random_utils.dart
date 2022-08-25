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
  static List<T> arrayElements<T>(List<T>? list, int count) {
    list ??= [];
    list.shuffle(Random());

    assert(count <= list.length, 'count cannot be grater than list size');
    return list.take(count).toList();
   
  }
}
