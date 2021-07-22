// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:faker_dart/src/models/system.dart';

import 'database.dart';
import 'date.dart';
import 'hacker.dart';
import 'internet.dart';
import 'lorem.dart';
import 'music.dart';
import 'name.dart';
import 'phone_number.dart';
import 'team.dart';
import 'vehicle.dart';
import 'word.dart';

import 'address.dart';
import 'animal.dart';
import 'app.dart';
import 'business.dart';
import 'cell_phone.dart';
import 'commerce.dart';
import 'company.dart';

class FakerLocale {
  final Address address;
  final Animal animal;
  final App app;
  final Business business;
  final CellPhone cellPhone;
  final Commerce commerce;
  final Company company;
  final Database database;
  final Date date;

  final Hacker hacker;
  final Internet internet;
  final Lorem lorem;
  final Music music;
  final Name name;
  final PhoneNumber phoneNumber;
  final System system;

  final Team team;
  final Vehicle vehicle;
  final Word word;

  FakerLocale({
    required this.address,
    required this.animal,
    required this.app,
    required this.business,
    required this.cellPhone,
    required this.commerce,
    required this.company,
    required this.database,
    required this.date,
    required this.hacker,
    required this.internet,
    required this.lorem,
    required this.music,
    required this.name,
    required this.phoneNumber,
    required this.system,
    required this.team,
    required this.vehicle,
    required this.word,
  });

  FakerLocale copyWith({
    Address? address,
    Animal? animal,
    App? app,
    Business? business,
    CellPhone? cellPhone,
    Commerce? commerce,
    Company? company,
    Database? database,
    Date? date,
    Hacker? hacker,
    Internet? internet,
    Lorem? lorem,
    Music? music,
    Name? name,
    PhoneNumber? phoneNumber,
    System? system,
    Team? team,
    Vehicle? vehicle,
    Word? word,
  }) {
    return FakerLocale(
      address: address ?? this.address,
      animal: animal ?? this.animal,
      app: app ?? this.app,
      business: business ?? this.business,
      cellPhone: cellPhone ?? this.cellPhone,
      commerce: commerce ?? this.commerce,
      company: company ?? this.company,
      database: database ?? this.database,
      date: date ?? this.date,
      hacker: hacker ?? this.hacker,
      internet: internet ?? this.internet,
      lorem: lorem ?? this.lorem,
      music: music ?? this.music,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      system: system ?? this.system,
      team: team ?? this.team,
      vehicle: vehicle ?? this.vehicle,
      word: word ?? this.word,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address.toMap(),
      'animal': animal.toMap(),
      'app': app.toMap(),
      'business': business.toMap(),
      'cellPhone': cellPhone.toMap(),
      'commerce': commerce.toMap(),
      'company': company.toMap(),
      'database': database.toMap(),
      'date': date.toMap(),
      'hacker': hacker.toMap(),
      'internet': internet.toMap(),
      'lorem': lorem.toMap(),
      'music': music.toMap(),
      'name': name.toMap(),
      'phoneNumber': phoneNumber.toMap(),
      'system': system.toMap(),
      'team': team.toMap(),
      'vehicle': vehicle.toMap(),
      'word': word.toMap(),
    };
  }

  factory FakerLocale.fromMap(Map<String, dynamic> map) {
    return FakerLocale(
      address: Address.fromMap(map['address'] ?? {}),
      animal: Animal.fromMap(map['animal'] ?? {}),
      app: App.fromMap(map['app'] ?? {}),
      business: Business.fromMap(map['business'] ?? {}),
      cellPhone: CellPhone.fromMap(map['cellPhone'] ?? {}),
      commerce: Commerce.fromMap(map['commerce'] ?? {}),
      company: Company.fromMap(map['company'] ?? {}),
      database: Database.fromMap(map['database'] ?? {}),
      date: Date.fromMap(map['date'] ?? {}),
      hacker: Hacker.fromMap(map['hacker'] ?? {}),
      internet: Internet.fromMap(map['internet'] ?? {}),
      lorem: Lorem.fromMap(map['lorem'] ?? {}),
      music: Music.fromMap(map['music'] ?? {}),
      name: Name.fromMap(map['name'] ?? {}),
      phoneNumber: PhoneNumber.fromMap(map['phoneNumber'] ?? {}),
      system: System.fromMap(map['system'] ?? {}),
      team: Team.fromMap(map['team'] ?? {}),
      vehicle: Vehicle.fromMap(map['vehicle'] ?? {}),
      word: Word.fromMap(map['word'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory FakerLocale.fromJson(String source) =>
      FakerLocale.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FakerLocale(address: $address, animal: $animal, app: $app, business: $business, cellPhone: $cellPhone, commerce: $commerce, company: $company, database: $database, date: $date, hacker: $hacker, internet: $internet, lorem: $lorem, music: $music, name: $name, phoneNumber: $phoneNumber, system: $system, team: $team, vehicle: $vehicle, word: $word)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FakerLocale &&
        other.address == address &&
        other.animal == animal &&
        other.app == app &&
        other.business == business &&
        other.cellPhone == cellPhone &&
        other.commerce == commerce &&
        other.company == company &&
        other.database == database &&
        other.date == date &&
        other.hacker == hacker &&
        other.internet == internet &&
        other.lorem == lorem &&
        other.music == music &&
        other.name == name &&
        other.phoneNumber == phoneNumber &&
        other.system == system &&
        other.team == team &&
        other.vehicle == vehicle &&
        other.word == word;
  }

  @override
  int get hashCode {
    return address.hashCode ^
        animal.hashCode ^
        app.hashCode ^
        business.hashCode ^
        cellPhone.hashCode ^
        commerce.hashCode ^
        company.hashCode ^
        database.hashCode ^
        date.hashCode ^
        hacker.hashCode ^
        internet.hashCode ^
        lorem.hashCode ^
        music.hashCode ^
        name.hashCode ^
        phoneNumber.hashCode ^
        system.hashCode ^
        team.hashCode ^
        vehicle.hashCode ^
        word.hashCode;
  }
}
