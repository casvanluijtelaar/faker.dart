import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/utils/random_utils.dart';

/// {@macro date}
class Date {
  /// {@macro date}
  Date(this._faker);

  final Faker _faker;

  /// generates a random date before the [reference] date and and optional range
  /// in years
  ///
  /// e.g. `Faker.instance.date.past(DateTime.now()); // DateTime('3/4/1995')`
  DateTime past(DateTime reference, {int rangeInYears = 100}) {
    final dateTime = DateTime.now();
    final currentDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    final rangeInDays = rangeInYears * 365;
    final randomDays = _faker.datatype.number(max: rangeInDays);

    return currentDate.subtract(Duration(days: randomDays));
  }

  /// generates a random date after the [reference] date and and optional range
  /// in years
  ///
  /// e.g. `Faker.instance.date.future(DateTime.now()); // DateTime('3/4/2056')`
  DateTime future(DateTime reference, {int rangeInYears = 100}) {
    final dateTime = DateTime.now();
    final currentDate = DateTime(dateTime.year, dateTime.month, dateTime.day);

    final rangeInDays = rangeInYears * 365;
    final randomDays = _faker.datatype.number(max: rangeInDays);

    return currentDate.add(Duration(days: randomDays));
  }

  /// generates a random date between the [start] & [end] date
  ///
  /// e.g.
  /// ``` dart
  /// final start = DateTime.parse('03/04/1969');
  /// final end   = DateTime.parse('03/04/1979');
  ///
  /// Faker.instance.date.between(start, end); // DateTime('12/5/1972')
  /// ```
  DateTime between(DateTime start, DateTime end) {
    final diff = end.millisecondsSinceEpoch - start.millisecondsSinceEpoch;
    final randomDays = _faker.datatype.number(max: (diff / 86400000).round());

    return start.add(Duration(milliseconds: randomDays));
  }

  /// generates a random month name or [abbreviated] month name
  ///
  /// e.g. `Faker.instance.date.month(); // January`
  String month({bool abbreviated = false}) {
    return abbreviated
        ? RandomUtils.arrayElement(_faker.locale.date.month.abbr)
        : RandomUtils.arrayElement(_faker.locale.date.month.wide);
  }

  /// generates a random weekday name or [abbreviated] weekday name
  ///
  /// e.g. `Faker.instance.date.weekday(); // monday`
  String weekday({bool abbreviated = false}) {
    return abbreviated
        ? RandomUtils.arrayElement(_faker.locale.date.weekday.abbr)
        : RandomUtils.arrayElement(_faker.locale.date.weekday.wide);
  }
}
