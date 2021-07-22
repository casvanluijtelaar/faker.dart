import 'package:faker_dart/src/utils/random_utils.dart';

import 'faker.dart';

/// defines a gender used for gender specific names
enum Gender {
  /// male gender names, e.g. John
  male,

  /// female gender names, e.g. Lucy
  female,

  /// unspecified gender, can return male or female names
  unspecified,
}

/// {@macro name}
class Name {
  /// {@macro name}
  const Name(this._faker);

  final Faker _faker;

  /// returns a persons full name including a [firstName], [lastName] and
  /// a chance for a prefix or suffix. if a [firstName] and/or [lastName]
  /// are used instead.
  String fullName({
    String? firstName,
    String? lastName,
    Gender gender = Gender.unspecified,
  }) {
    firstName ??= this.firstName(gender: gender);
    lastName ??= this.lastName(gender: gender);

    final chance = _faker.datatype.number(max: 8);

    if (chance == 0) {
      final prefix = this.prefix(gender: gender);
      return '$prefix $firstName $lastName';
    }

    if (chance == 1) {
      final suffix = this.suffix();
      return '$firstName $lastName $suffix';
    }

    if (chance == 2) {
      final middleName = this..middleName(gender: gender);
      return '$firstName $middleName $lastName';
    }

    return '$firstName $lastName';
  }

  /// returns a random first name, optional [Gender] can be provided if
  /// locale supports gender specific first names
  ///
  /// e.g. `firstName(gender: Gender.male) // 'john'`
  String firstName({Gender gender = Gender.unspecified}) {
    if (_faker.locale.name.maleFirstName == null ||
        _faker.locale.name.femaleFirstName == null) {
      return RandomUtils.arrayElement(_faker.locale.name.firstName);
    }

    switch (gender) {
      case Gender.male:
        return RandomUtils.arrayElement(_faker.locale.name.maleFirstName);
      case Gender.female:
        return RandomUtils.arrayElement(_faker.locale.name.femaleFirstName);
      case Gender.unspecified:
        return RandomUtils.arrayElement(_faker.locale.name.firstName);
    }
  }

  /// returns a random middle name, optional [Gender] can be provided if
  /// locale supports gender specific middle names
  String middleName({Gender gender = Gender.unspecified}) {
    if (_faker.locale.name.maleMiddleName == null ||
        _faker.locale.name.femaleMiddleName == null) {
      return RandomUtils.arrayElement(_faker.locale.name.middleName);
    }

    switch (gender) {
      case Gender.male:
        return RandomUtils.arrayElement(_faker.locale.name.maleMiddleName);
      case Gender.female:
        return RandomUtils.arrayElement(_faker.locale.name.femaleMiddleName);
      case Gender.unspecified:
        return RandomUtils.arrayElement(_faker.locale.name.middleName);
    }
  }

  /// returns a random last name, optional [Gender] can be provided if
  /// locale supports gender specific last names
  String lastName({Gender gender = Gender.unspecified}) {
    if (_faker.locale.name.maleLastName == null ||
        _faker.locale.name.femaleLastName == null) {
      return RandomUtils.arrayElement(_faker.locale.name.lastName);
    }

    switch (gender) {
      case Gender.male:
        return RandomUtils.arrayElement(_faker.locale.name.maleLastName);
      case Gender.female:
        return RandomUtils.arrayElement(_faker.locale.name.femaleLastName);
      case Gender.unspecified:
        return RandomUtils.arrayElement(_faker.locale.name.lastName);
    }
  }

  /// returns a job title describing several job elements
  String jobTitle() {
    return '${jobDescriptor()} ${jobSector()} ${jobType()}';
  }

  /// returns a locale specific gender. optional [binary] genders can be
  /// selected
  String gender({bool binary = false}) {
    return binary
        ? RandomUtils.arrayElement(_faker.locale.name.binaryGender)
        : RandomUtils.arrayElement(_faker.locale.name.gender);
  }

  /// returns a random name prefix, optional [Gender] can be provided if
  /// locale supports gender specific gender prefixes
  String prefix({Gender gender = Gender.unspecified}) {
    if (_faker.locale.name.malePrefix == null ||
        _faker.locale.name.femalePrefix == null) {
      return RandomUtils.arrayElement(_faker.locale.name.prefix);
    }

    switch (gender) {
      case Gender.male:
        return RandomUtils.arrayElement(_faker.locale.name.malePrefix);
      case Gender.female:
        return RandomUtils.arrayElement(_faker.locale.name.femalePrefix);
      case Gender.unspecified:
        return RandomUtils.arrayElement(_faker.locale.name.prefix);
    }
  }

  /// returns a random name suffix
  String suffix() {
    return RandomUtils.arrayElement(_faker.locale.name.suffix);
  }

  /// returns a random job title
  String title() {
    final descriptor =
        RandomUtils.arrayElement(_faker.locale.name.title.descriptor);
    final level = RandomUtils.arrayElement(_faker.locale.name.title.level);
    final job = RandomUtils.arrayElement(_faker.locale.name.title.job);

    return '$descriptor $level $job';
  }

  /// returns a random job description
  String jobDescriptor() {
    return RandomUtils.arrayElement(_faker.locale.name.title.descriptor);
  }

  /// returns a random job sector e.g. creative, industry, ...
  String jobSector() {
    return RandomUtils.arrayElement(_faker.locale.name.title.level);
  }

  /// returns a random job type e.g. cook, driver, ...
  String jobType() {
    return RandomUtils.arrayElement(_faker.locale.name.title.job);
  }
}
