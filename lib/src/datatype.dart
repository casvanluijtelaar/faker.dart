import 'dart:convert';
import 'dart:math';

import 'package:faker_dart/src/random.dart';

import '../faker_dart.dart';

class DataType {
  final _random = Random();

  int number({int min = 0, int max = 99999}) {
    return min + _random.nextInt(max - min);
  }

  double float({double min = 0, double max = 99999, double precision = 2}) {
    double mod = pow(10.0, precision).toDouble();
    double val = min + _random.nextDouble() * (max - min);
    return ((val * mod).round().toDouble() / mod);
  }

  DateTime dateTime({int min = 1990, int max = 2100}) {
    final days = (min + _random.nextInt(max - min)) * 365;
    return DateTime(min).add(Duration(
      days: days,
      seconds: _random.nextInt(86400),
    ));
  }

  String string({int length = 10}) {
    final chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    var string = '';

    for (int i = 0; i < length; i++) {
      string += chars[_random.nextInt(chars.length)];
    }

    return string;
  }

  String uuid() {
    final template = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx';

    return template.replaceAllMapped(RegExp(r'/[xy]/g'), (match) {
      final random = _random.nextInt(15);
      final value = match[0] == 'x' ? random : (random & 0x3 | 0x8);

      return value.toRadixString(16);
    });
  }

  bool boolean() => _random.nextBool();

  String hexaDecimal({int length = 1}) {
    final chars = [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "a",
      "b",
      "c",
      "d",
      "e",
      "f",
      "A",
      "B",
      "C",
      "D",
      "E",
      "F"
    ];
    var string = '0x';

    for (int i = 0; i < length; i++) {
      string += Randoms.arrayElement(chars);
    }
    return string;
  }

  String json() {
    final properties = ['foo', 'bar', 'bike', 'a', 'b', 'name', 'prop'];

    final data = {};
    for (final property in properties) {
      data.putIfAbsent(property, () => boolean() ? string() : number());
    }

    return jsonEncode(data);
  }

  List<dynamic> list({int length = 10}) {
    return List.generate(length, (_) => boolean() ? string() : number());
  }
}
