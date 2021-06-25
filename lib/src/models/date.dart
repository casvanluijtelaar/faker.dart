import 'dart:convert';

import 'package:collection/collection.dart';

class Date {
  final Month month;
  final Weekday weekday;
  Date({
    required this.month,
    required this.weekday,
  });

  Date copyWith({
    Month? month,
    Weekday? weekday,
  }) {
    return Date(
      month: month ?? this.month,
      weekday: weekday ?? this.weekday,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'month': month.toMap(),
      'weekday': weekday.toMap(),
    };
  }

  factory Date.fromMap(Map<String, dynamic> map) {
    return Date(
      month: Month.fromMap(map['month']),
      weekday: Weekday.fromMap(map['weekday']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Date.fromJson(String source) => Date.fromMap(json.decode(source));

  @override
  String toString() => 'Date(month: $month, weekday: $weekday)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Date && other.month == month && other.weekday == weekday;
  }

  @override
  int get hashCode => month.hashCode ^ weekday.hashCode;
}

class Month {
  final List<String>? wide;
  final List<String>? wide_context;
  final List<String>? abbr;
  final List<String>? abbr_context;
  Month({
    required this.wide,
    required this.wide_context,
    required this.abbr,
    required this.abbr_context,
  });

  Month copyWith({
    List<String>? wide,
    List<String>? wide_context,
    List<String>? abbr,
    List<String>? abbr_context,
  }) {
    return Month(
      wide: wide ?? this.wide,
      wide_context: wide_context ?? this.wide_context,
      abbr: abbr ?? this.abbr,
      abbr_context: abbr_context ?? this.abbr_context,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wide': wide,
      'wide_context': wide_context,
      'abbr': abbr,
      'abbr_context': abbr_context,
    };
  }

  factory Month.fromMap(Map<String, dynamic> map) {
    return Month(
      wide: List<String>.from(map['wide']),
      wide_context: List<String>.from(map['wide_context']),
      abbr: List<String>.from(map['abbr']),
      abbr_context: List<String>.from(map['abbr_context']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Month.fromJson(String source) => Month.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Month(wide: $wide, wide_context: $wide_context, abbr: $abbr, abbr_context: $abbr_context)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Month &&
        listEquals(other.wide, wide) &&
        listEquals(other.wide_context, wide_context) &&
        listEquals(other.abbr, abbr) &&
        listEquals(other.abbr_context, abbr_context);
  }

  @override
  int get hashCode {
    return wide.hashCode ^
        wide_context.hashCode ^
        abbr.hashCode ^
        abbr_context.hashCode;
  }
}

class Weekday {
  final List<String>? wide;
  final List<String>? wide_context;
  final List<String>? abbr;
  final List<String>? abbr_context;
  Weekday({
    required this.wide,
    required this.wide_context,
    required this.abbr,
    required this.abbr_context,
  });

  Weekday copyWith({
    List<String>? wide,
    List<String>? wide_context,
    List<String>? abbr,
    List<String>? abbr_context,
  }) {
    return Weekday(
      wide: wide ?? this.wide,
      wide_context: wide_context ?? this.wide_context,
      abbr: abbr ?? this.abbr,
      abbr_context: abbr_context ?? this.abbr_context,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wide': wide,
      'wide_context': wide_context,
      'abbr': abbr,
      'abbr_context': abbr_context,
    };
  }

  factory Weekday.fromMap(Map<String, dynamic> map) {
    return Weekday(
      wide: List<String>.from(map['wide']),
      wide_context: List<String>.from(map['wide_context']),
      abbr: List<String>.from(map['abbr']),
      abbr_context: List<String>.from(map['abbr_context']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Weekday.fromJson(String source) =>
      Weekday.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Weekday(wide: $wide, wide_context: $wide_context, abbr: $abbr, abbr_context: $abbr_context)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Weekday &&
        listEquals(other.wide, wide) &&
        listEquals(other.wide_context, wide_context) &&
        listEquals(other.abbr, abbr) &&
        listEquals(other.abbr_context, abbr_context);
  }

  @override
  int get hashCode {
    return wide.hashCode ^
        wide_context.hashCode ^
        abbr.hashCode ^
        abbr_context.hashCode;
  }
}
