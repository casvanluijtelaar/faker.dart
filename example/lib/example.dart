import 'package:faker_dart/faker_dart.dart';

void main(List<String> arguments) {
  final Faker faker = Faker.instance;

  ///datatypes
  print(faker.datatype.number());
  print(faker.datatype.float());
  print(faker.datatype.dateTime());
  print(faker.datatype.string());
  print(faker.datatype.uuid());
  print(faker.datatype.boolean());
  print(faker.datatype.hexaDecimal());
  print(faker.datatype.json());
  print(faker.datatype.list());

  /// names
  print(faker.name.fullName());
  print(faker.name.firstName());
  print(faker.name.middleName());
  print(faker.name.lastName());
  print(faker.name.jobTitle());
  print(faker.name.gender());
  print(faker.name.prefix());
  print(faker.name.suffix());
  print(faker.name.title());
  print(faker.name.jobDescriptor());
  print(faker.name.jobSector());
  print(faker.name.jobType());

  /// combine all prevous using the fake method
  print(faker.fake('{{name.firstName}}, {{datatype.boolean}}'));
}
