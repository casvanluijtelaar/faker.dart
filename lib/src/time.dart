import 'dart:math';

class Time {
  DateTime now() => DateTime.now();
  DateTime past() => DateTime.now().subtract(Duration(days: Random().nextInt(737000)));
  DateTime future() => DateTime.now().add(Duration(days: Random().nextInt(100000)));
}
