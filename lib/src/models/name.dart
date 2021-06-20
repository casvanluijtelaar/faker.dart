import 'dart:convert';

import 'package:collection/collection.dart';

class Name {
  final List<String> binaryGender;
  final List<String> femaleFirstName;
  final List<String> firstName;
  final List<String> gender;
  final List<String> lastName;
  final List<String> maleFirstName;
  final List<String> name;
  final List<String> prefix;
  final List<String> suffix;
  final Title title;
  Name({
    required this.binaryGender,
    required this.femaleFirstName,
    required this.firstName,
    required this.gender,
    required this.lastName,
    required this.maleFirstName,
    required this.name,
    required this.prefix,
    required this.suffix,
    required this.title,
  });

  Name copyWith({
    List<String>? binaryGender,
    List<String>? femaleFirstName,
    List<String>? firstName,
    List<String>? gender,
    List<String>? lastName,
    List<String>? maleFirstName,
    List<String>? name,
    List<String>? prefix,
    List<String>? suffix,
    Title? title,
  }) {
    return Name(
      binaryGender: binaryGender ?? this.binaryGender,
      femaleFirstName: femaleFirstName ?? this.femaleFirstName,
      firstName: firstName ?? this.firstName,
      gender: gender ?? this.gender,
      lastName: lastName ?? this.lastName,
      maleFirstName: maleFirstName ?? this.maleFirstName,
      name: name ?? this.name,
      prefix: prefix ?? this.prefix,
      suffix: suffix ?? this.suffix,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'binaryGender': binaryGender,
      'femaleFirstName': femaleFirstName,
      'firstName': firstName,
      'gender': gender,
      'lastName': lastName,
      'maleFirstName': maleFirstName,
      'name': name,
      'prefix': prefix,
      'suffix': suffix,
      'title': title.toMap(),
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      binaryGender: List<String>.from(map['binaryGender']),
      femaleFirstName: List<String>.from(map['femaleFirstName']),
      firstName: List<String>.from(map['firstName']),
      gender: List<String>.from(map['gender']),
      lastName: List<String>.from(map['lastName']),
      maleFirstName: List<String>.from(map['maleFirstName']),
      name: List<String>.from(map['name']),
      prefix: List<String>.from(map['prefix']),
      suffix: List<String>.from(map['suffix']),
      title: Title.fromMap(map['title']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) => Name.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Name(binaryGender: $binaryGender, femaleFirstName: $femaleFirstName, firstName: $firstName, gender: $gender, lastName: $lastName, maleFirstName: $maleFirstName, name: $name, prefix: $prefix, suffix: $suffix, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is Name &&
      listEquals(other.binaryGender, binaryGender) &&
      listEquals(other.femaleFirstName, femaleFirstName) &&
      listEquals(other.firstName, firstName) &&
      listEquals(other.gender, gender) &&
      listEquals(other.lastName, lastName) &&
      listEquals(other.maleFirstName, maleFirstName) &&
      listEquals(other.name, name) &&
      listEquals(other.prefix, prefix) &&
      listEquals(other.suffix, suffix) &&
      other.title == title;
  }

  @override
  int get hashCode {
    return binaryGender.hashCode ^
      femaleFirstName.hashCode ^
      firstName.hashCode ^
      gender.hashCode ^
      lastName.hashCode ^
      maleFirstName.hashCode ^
      name.hashCode ^
      prefix.hashCode ^
      suffix.hashCode ^
      title.hashCode;
  }
}

class Title {
  final List<String> descriptor;
  final List<String> level;
  final List<String> job;
  Title({
    required this.descriptor,
    required this.level,
    required this.job,
  });

  Title copyWith({
    List<String>? descriptor,
    List<String>? level,
    List<String>? job,
  }) {
    return Title(
      descriptor: descriptor ?? this.descriptor,
      level: level ?? this.level,
      job: job ?? this.job,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'descriptor': descriptor,
      'level': level,
      'job': job,
    };
  }

  factory Title.fromMap(Map<String, dynamic> map) {
    return Title(
      descriptor: List<String>.from(map['descriptor']),
      level: List<String>.from(map['level']),
      job: List<String>.from(map['job']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Title.fromJson(String source) => Title.fromMap(json.decode(source));

  @override
  String toString() => 'Title(descriptor: $descriptor, level: $level, job: $job)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is Title &&
      listEquals(other.descriptor, descriptor) &&
      listEquals(other.level, level) &&
      listEquals(other.job, job);
  }

  @override
  int get hashCode => descriptor.hashCode ^ level.hashCode ^ job.hashCode;
}