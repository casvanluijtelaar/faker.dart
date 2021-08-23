import 'package:faker_dart/faker_dart.dart';

void main(List<String> arguments) {
  final Faker faker = Faker.instance;

  print(faker.datatype.number());
  print(faker.name.fullName());
  print(faker.address.zipCode());
  print(faker.animal.animal());
  print(faker.commerce.price());
  print(faker.company.companyName());
  print(faker.database.column());
  print(faker.music.genre());
  print(faker.hacker.phrase());

  /// combine all prevous using the fake method
  print(faker.fake(
      '{{name.firstName}}, {{datatype.boolean}}, and also: {{commerce.price}}'));
}
