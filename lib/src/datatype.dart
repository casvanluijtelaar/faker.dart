import 'dart:convert';
import 'dart:math';

import 'package:faker_dart/src/random.dart';

class DataType {
  final _random = Random();

  /// returns a random [int] with optional [min] & [max] parameters
  ///
  /// e.g. `number(min: 0, max: 4) // 2`
  int number({int min = 0, int max = 99999}) {
    return min + _random.nextInt(max - min);
  }

  /// returns a random [double] with optional [min], [max] & [precision]
  /// parameters.
  ///
  /// e.g. `float(min: 0, max: 1, precision: 3) // 0.356`
  double float({double min = 0, double max = 99999, int precision = 2}) {
    final val = min + _random.nextDouble() * (max - min);
    return double.parse(val.toStringAsFixed(precision));
  }

  /// returns a random [DateTime] with optional [min] & [max] parameters
  /// (years as Integers)
  ///
  /// e.g. `dateTime(min: 2002, max 2080)  // DateTime(2069, 4, 6)`
  DateTime dateTime({int min = 1990, int max = 2100}) {
    final year = min + _random.nextInt(max - min);
    final month = 1 + _random.nextInt(11);
    final day = 1 + _random.nextInt(30);
    final hour = 1 + _random.nextInt(23);
    final minute = 1 + _random.nextInt(60);
    final second = 1 + _random.nextInt(60);

    return DateTime(year, month, day, hour, minute, second);
  }

  /// returns a random [String] with optional [length] parameter
  ///
  /// e.g. `string(length: 12) // 'dKebdPAOfkeB'`
  String string({int length = 10}) {
    final chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    var string = '';

    for (int i = 0; i < length; i++) {
      string += chars[_random.nextInt(chars.length)];
    }

    return string;
  }

  /// returns a random v4 uuid as a [String]
  String uuid() {
    final template = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx';

    return template.replaceAllMapped(RegExp(r'/[xy]/g'), (match) {
      final random = _random.nextInt(15);
      final value = match[0] == 'x' ? random : (random & 0x3 | 0x8);

      return value.toRadixString(16);
    });
  }

  /// returns a random boolean
  bool boolean() => _random.nextBool();

  /// returns a random HEX [String] with an optional [length] paramter
  ///
  /// e.g. `hexaDecimal(length: 6) // '0xF475CD'`
  String hexaDecimal({int length = 6}) {
    final chars = [
      ...["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a"],
      ...["b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F"],
    ];
    var string = '0x';

    for (int i = 0; i < length; i++) {
      string += Randoms.arrayElement(chars);
    }
    return string;
  }

  ///returns a random JSON [String]
  String json() {
    final properties = ['foo', 'bar', 'bike', 'a', 'b', 'name', 'prop'];

    final data = {};
    for (final property in properties) {
      data.putIfAbsent(property, () => boolean() ? string() : number());
    }

    return jsonEncode(data);
  }

  /// returns a [List] filled with random data
  List<dynamic> list({int length = 10}) {
    return List.generate(length, (_) => boolean() ? string() : number());
  }
}
