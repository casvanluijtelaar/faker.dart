// ignore_for_file: avoid_print
import 'package:faker_dart/faker_dart.dart';

void main(List<String> arguments) {
  final faker = Faker.instance;

  print(faker.datatype.number());
  print(faker.name.fullName());
  print(faker.address.zipCode());
  print(faker.animal.animal());
  print(faker.commerce.price());
  print(faker.company.companyName());
  print(faker.database.column());
  print(faker.music.genre());
  print(faker.hacker.noun());
  print(faker.git.commitMessage());
  print(faker.date.month());
  print(faker.internet.url());
  print(faker.internet.domainName());
  print(faker.internet.domainSuffix());
  print(faker.internet.httpMethod());
  print(faker.internet.ip());

  /// combine all previous using the fake method
  print(
    faker.fake(
      '{{name.firstName}}, {{datatype.boolean}}, and also: {{commerce.price}}',
    ),
  );
}
