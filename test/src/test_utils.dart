import 'package:faker_dart/src/faker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:faker_dart/src/models/_models.dart';

class MockFaker extends Mock implements Faker {
  @override
  FakerLocale locale = MockFakerLocale();
}

class MockFakerLocale extends Mock implements FakerLocale {
  @override
  Address address = MockAddress();
  @override
  Animal animal = MockAnimal();
  @override
  App app = MockApp();
  @override
  Business business = MockBusiness();
  @override
  CellPhone cellPhone = MockCellPhone();
  @override
  Commerce commerce = MockCommerce();
  @override
  Company company = MockCompany();
  @override
  Database database = MockDatabase();
  @override
  Date date = MockDate();
  Finance finance = MockFinance();
  @override
  Hacker hacker = MockHacker();
  @override
  Internet internet = MockInternet();
  @override
  Lorem lorem = MockLorem();
  @override
  Music music = MockMusic();
  @override
  Name name = MockName();
  @override
  PhoneNumber phoneNumber = MockPhoneNumber();
  @override
  System system = MockSystem();
  @override
  Team team = Mockteam();
  @override
  Vehicle vehicle = MockVehicle();
  @override
  Word word = MockWord();
}

class MockAddress extends Mock implements Address {}

class MockAnimal extends Mock implements Animal {}

class MockApp extends Mock implements App {}

class MockBusiness extends Mock implements Business {}

class MockCellPhone extends Mock implements CellPhone {}

class MockCommerce extends Mock implements Commerce {
  @override
  ProductName productName = MockProductName();
}

class MockProductName extends Mock implements ProductName {}

class MockCompany extends Mock implements Company {}

class MockDatabase extends Mock implements Database {}

class MockDate extends Mock implements Date {}

class MockFinance extends Mock implements Finance {}

class MockHacker extends Mock implements Hacker {}

class MockInternet extends Mock implements Internet {}

class MockLorem extends Mock implements Lorem {}

class MockMusic extends Mock implements Music {}

class MockName extends Mock implements Name {
  @override
  Title title = MockTitle();
}

class MockPhoneNumber extends Mock implements PhoneNumber {}

class MockSystem extends Mock implements System {}

class Mockteam extends Mock implements Team {}

class MockTitle extends Mock implements Title {}

class MockVehicle extends Mock implements Vehicle {}

class MockWord extends Mock implements Word {}
