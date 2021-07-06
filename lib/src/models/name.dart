// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

import 'title.dart';

class Name {
  final List<String>? gender;
  final List<String>? binaryGender;

  final List<String>? firstName;
  final List<String>? femaleFirstName;
  final List<String>? maleFirstName;

  final List<String>? middleName;
  final List<String>? femaleMiddleName;
  final List<String>? maleMiddleName;

  final List<String>? lastName;
  final List<String>? femaleLastName;
  final List<String>? maleLastName;

  final List<String>? name;

  final List<String>? prefix;
  final List<String>? femalePrefix;
  final List<String>? malePrefix;

  final List<String>? suffix;

  final Title? title;
  Name({
    this.gender,
    this.binaryGender,
    this.firstName,
    this.femaleFirstName,
    this.maleFirstName,
    this.middleName,
    this.femaleMiddleName,
    this.maleMiddleName,
    this.lastName,
    this.femaleLastName,
    this.maleLastName,
    this.name,
    this.prefix,
    this.femalePrefix,
    this.malePrefix,
    this.suffix,
    this.title,
  });

  Name copyWith({
    List<String>? gender,
    List<String>? binaryGender,
    List<String>? firstName,
    List<String>? femaleFirstName,
    List<String>? maleFirstName,
    List<String>? middleName,
    List<String>? femaleMiddleName,
    List<String>? maleMiddleName,
    List<String>? lastName,
    List<String>? femaleLastName,
    List<String>? maleLastName,
    List<String>? name,
    List<String>? prefix,
    List<String>? femalePrefix,
    List<String>? malePrefix,
    List<String>? suffix,
    Title? title,
  }) {
    return Name(
      gender: gender ?? this.gender,
      binaryGender: binaryGender ?? this.binaryGender,
      firstName: firstName ?? this.firstName,
      femaleFirstName: femaleFirstName ?? this.femaleFirstName,
      maleFirstName: maleFirstName ?? this.maleFirstName,
      middleName: middleName ?? this.middleName,
      femaleMiddleName: femaleMiddleName ?? this.femaleMiddleName,
      maleMiddleName: maleMiddleName ?? this.maleMiddleName,
      lastName: lastName ?? this.lastName,
      femaleLastName: femaleLastName ?? this.femaleLastName,
      maleLastName: maleLastName ?? this.maleLastName,
      name: name ?? this.name,
      prefix: prefix ?? this.prefix,
      femalePrefix: femalePrefix ?? this.femalePrefix,
      malePrefix: malePrefix ?? this.malePrefix,
      suffix: suffix ?? this.suffix,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'gender': gender,
      'binaryGender': binaryGender,
      'firstName': firstName,
      'femaleFirstName': femaleFirstName,
      'maleFirstName': maleFirstName,
      'middleName': middleName,
      'femaleMiddleName': femaleMiddleName,
      'maleMiddleName': maleMiddleName,
      'lastName': lastName,
      'femaleLastName': femaleLastName,
      'maleLastName': maleLastName,
      'name': name,
      'prefix': prefix,
      'femalePrefix': femalePrefix,
      'malePrefix': malePrefix,
      'suffix': suffix,
      'title': title?.toMap(),
    };
  }

  factory Name.fromMap(Map<String, dynamic> map) {
    return Name(
      gender: map['gender'],
      binaryGender: map['binaryGender'],
      firstName: map['firstName'],
      femaleFirstName: map['femaleFirstName'],
      maleFirstName: map['maleFirstName'],
      middleName: map['middleName'],
      femaleMiddleName: map['femaleMiddleName'],
      maleMiddleName: map['maleMiddleName'],
      lastName: map['lastName'],
      femaleLastName: map['femaleLastName'],
      maleLastName: map['maleLastName'],
      name: map['name'],
      prefix: map['prefix'],
      femalePrefix: map['femalePrefix'],
      malePrefix: map['malePrefix'],
      suffix: map['suffix'],
      title: Title.fromMap(map['title']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Name.fromJson(String source) => Name.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Name(gender: $gender, binaryGender: $binaryGender, firstName: $firstName, femaleFirstName: $femaleFirstName, maleFirstName: $maleFirstName, middleName: $middleName, femaleMiddleName: $femaleMiddleName, maleMiddleName: $maleMiddleName, lastName: $lastName, femaleLastName: $femaleLastName, maleLastName: $maleLastName, name: $name, prefix: $prefix, femalePrefix: $femalePrefix, malePrefix: $malePrefix, suffix: $suffix, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is Name &&
      listEquals(other.gender, gender) &&
      listEquals(other.binaryGender, binaryGender) &&
      listEquals(other.firstName, firstName) &&
      listEquals(other.femaleFirstName, femaleFirstName) &&
      listEquals(other.maleFirstName, maleFirstName) &&
      listEquals(other.middleName, middleName) &&
      listEquals(other.femaleMiddleName, femaleMiddleName) &&
      listEquals(other.maleMiddleName, maleMiddleName) &&
      listEquals(other.lastName, lastName) &&
      listEquals(other.femaleLastName, femaleLastName) &&
      listEquals(other.maleLastName, maleLastName) &&
      listEquals(other.name, name) &&
      listEquals(other.prefix, prefix) &&
      listEquals(other.femalePrefix, femalePrefix) &&
      listEquals(other.malePrefix, malePrefix) &&
      listEquals(other.suffix, suffix) &&
      other.title == title;
  }

  @override
  int get hashCode {
    return gender.hashCode ^
      binaryGender.hashCode ^
      firstName.hashCode ^
      femaleFirstName.hashCode ^
      maleFirstName.hashCode ^
      middleName.hashCode ^
      femaleMiddleName.hashCode ^
      maleMiddleName.hashCode ^
      lastName.hashCode ^
      femaleLastName.hashCode ^
      maleLastName.hashCode ^
      name.hashCode ^
      prefix.hashCode ^
      femalePrefix.hashCode ^
      malePrefix.hashCode ^
      suffix.hashCode ^
      title.hashCode;
  }
}
