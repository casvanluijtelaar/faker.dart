import 'package:faker_dart/src/random.dart';

import 'faker.dart';

enum Gender { male, female, unspecified }

class Name {
  const Name(this._faker);

  final Faker _faker;

  String firstName({Gender gender = Gender.unspecified}) {
    if (_faker.locale.name.maleFirstName == null ||
        _faker.locale.name.femaleFirstName == null)
      return Randoms.arrayElement(_faker.locale.name.firstName!);

    switch (gender) {
      case Gender.male:
        return Randoms.arrayElement(_faker.locale.name.maleFirstName!);
      case Gender.female:
        return Randoms.arrayElement(_faker.locale.name.femaleFirstName!);
      case Gender.unspecified:
        return Randoms.arrayElement(_faker.locale.name.firstName!);
    }
  }

  String lastName() {
    return Randoms.arrayElement(_faker.locale.name.lastName!);
  }



}
