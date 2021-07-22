// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Animal {
  final List<String>? bear;
  final List<String>? bird;
  final List<String>? cat;
  final List<String>? cetacean;
  final List<String>? cow;
  final List<String>? crocodilia;
  final List<String>? dog;
  final List<String>? fish;
  final List<String>? horse;

  final List<String>? insect;
  final List<String>? lion;
  final List<String>? rabbit;
  final List<String>? snake;
  final List<String>? type;
  Animal({
    this.bear,
    this.bird,
    this.cat,
    this.cetacean,
    this.cow,
    this.crocodilia,
    this.dog,
    this.fish,
    this.horse,
    this.insect,
    this.lion,
    this.rabbit,
    this.snake,
    this.type,
  });

  Animal copyWith({
    List<String>? bear,
    List<String>? bird,
    List<String>? cat,
    List<String>? cetacean,
    List<String>? cow,
    List<String>? crocodilia,
    List<String>? dog,
    List<String>? fish,
    List<String>? horse,
    List<String>? insect,
    List<String>? lion,
    List<String>? rabbit,
    List<String>? snake,
    List<String>? type,
  }) {
    return Animal(
      bear: bear ?? this.bear,
      bird: bird ?? this.bird,
      cat: cat ?? this.cat,
      cetacean: cetacean ?? this.cetacean,
      cow: cow ?? this.cow,
      crocodilia: crocodilia ?? this.crocodilia,
      dog: dog ?? this.dog,
      fish: fish ?? this.fish,
      horse: horse ?? this.horse,
      insect: insect ?? this.insect,
      lion: lion ?? this.lion,
      rabbit: rabbit ?? this.rabbit,
      snake: snake ?? this.snake,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bear': bear,
      'bird': bird,
      'cat': cat,
      'cetacean': cetacean,
      'cow': cow,
      'crocodilia': crocodilia,
      'dog': dog,
      'fish': fish,
      'horse': horse,
      'insect': insect,
      'lion': lion,
      'rabbit': rabbit,
      'snake': snake,
      'type': type,
    };
  }

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      bear: map['bear'],
      bird: map['bird'],
      cat: map['cat'],
      cetacean: map['cetacean'],
      cow: map['cow'],
      crocodilia: map['crocodilia'],
      dog: map['dog'],
      fish: map['fish'],
      horse: map['horse'],
      insect: map['insect'],
      lion: map['lion'],
      rabbit: map['rabbit'],
      snake: map['snake'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Animal.fromJson(String source) => Animal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Animal(bear: $bear, bird: $bird, cat: $cat, cetacean: $cetacean, cow: $cow, crocodilia: $crocodilia, dog: $dog, fish: $fish, horse: $horse, insect: $insect, lion: $lion, rabbit: $rabbit, snake: $snake, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Animal &&
        listEquals(other.bear, bear) &&
        listEquals(other.bird, bird) &&
        listEquals(other.cat, cat) &&
        listEquals(other.cetacean, cetacean) &&
        listEquals(other.cow, cow) &&
        listEquals(other.crocodilia, crocodilia) &&
        listEquals(other.dog, dog) &&
        listEquals(other.fish, fish) &&
        listEquals(other.horse, horse) &&
        listEquals(other.insect, insect) &&
        listEquals(other.lion, lion) &&
        listEquals(other.rabbit, rabbit) &&
        listEquals(other.snake, snake) &&
        listEquals(other.type, type);
  }

  @override
  int get hashCode {
    return bear.hashCode ^
        bird.hashCode ^
        cat.hashCode ^
        cetacean.hashCode ^
        cow.hashCode ^
        crocodilia.hashCode ^
        dog.hashCode ^
        fish.hashCode ^
        horse.hashCode ^
        insect.hashCode ^
        lion.hashCode ^
        rabbit.hashCode ^
        snake.hashCode ^
        type.hashCode;
  }
}
