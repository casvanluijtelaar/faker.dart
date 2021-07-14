import 'package:faker_dart/faker_dart.dart';

void main(List<String> arguments) {
  final Faker faker = Faker.instance;

  print(faker.datatype.number());
  print(faker.name.fullName());
  print(faker.address.zipCode());
  print(faker.animal.animal());
  print(faker.commerce.price());

  /// combine all prevous using the fake method
  print(faker.fake('{{name.firstName}}, {{datatype.boolean}}, and also: {{commerce.price}}'));
}
