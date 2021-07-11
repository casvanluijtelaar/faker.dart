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

  /// address
  print(faker.address.zipCode());
  print(faker.address.city());
  print(faker.address.cityPrefix());
  print(faker.address.citySuffix());
  print(faker.address.cityName());
  print(faker.address.streetName());
  print(faker.address.streetSuffix());
  print(faker.address.streetPrefix());
  print(faker.address.streetAddress());
  print(faker.address.secondaryAddress());
  print(faker.address.county());
  print(faker.address.country());
  print(faker.address.countryCode());
  print(faker.address.state());
  print(faker.address.stateAbbr());
  print(faker.address.latitude());
  print(faker.address.longitude());
  print(faker.address.direction());
  print(faker.address.cardinalDirection());
  print(faker.address.ordinalDirection());
  print(faker.address.nearbyGPSCoordinate());
  print(faker.address.timezone());

  /// combine all prevous using the fake method
  print(faker.fake('{{name.firstName}}, {{datatype.boolean}}'));
}
