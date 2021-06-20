import 'dart:convert';

import 'package:equatable/equatable.dart';

class Animal extends Equatable {
  final List<String> bear;
  final List<String> bird;
  final List<String> cat;
  final List<String> cetacean;
  final List<String> cow;
  final List<String> crocodilia;
  final List<String> dog;
  final List<String> fish;
  final List<String> horse;

  final List<String> insect;
  final List<String> lion;
  final List<String> rabbit;
  final List<String> snake;
  final List<String> type;
  Animal({
    required this.bear,
    required this.bird,
    required this.cat,
    required this.cetacean,
    required this.cow,
    required this.crocodilia,
    required this.dog,
    required this.fish,
    required this.horse,
    required this.insect,
    required this.lion,
    required this.rabbit,
    required this.snake,
    required this.type,
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
      bear: List<String>.from(map['bear']),
      bird: List<String>.from(map['bird']),
      cat: List<String>.from(map['cat']),
      cetacean: List<String>.from(map['cetacean']),
      cow: List<String>.from(map['cow']),
      crocodilia: List<String>.from(map['crocodilia']),
      dog: List<String>.from(map['dog']),
      fish: List<String>.from(map['fish']),
      horse: List<String>.from(map['horse']),
      insect: List<String>.from(map['insect']),
      lion: List<String>.from(map['lion']),
      rabbit: List<String>.from(map['rabbit']),
      snake: List<String>.from(map['snake']),
      type: List<String>.from(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Animal.fromJson(String source) => Animal.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      bear,
      bird,
      cat,
      cetacean,
      cow,
      crocodilia,
      dog,
      fish,
      horse,
      insect,
      lion,
      rabbit,
      snake,
      type,
    ];
  }
}
