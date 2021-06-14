import 'package:faker_dart/src/locales.dart';

import "./team.dart";
import "./phone_number.dart";
import "./name.dart";
import "./lorem.dart";
import "./internet.dart";
import "./hacker.dart";
import "./finance.dart";
import "./credit_card.dart";
import "./company.dart";
import "./commerce.dart";
import "./cell_phone.dart";
import "./business.dart";
import "./app.dart";
import "./address.dart";
class El extends FakerLocale {
    final Address address = Address();
    final App app = App();
    final Business business = Business();
    final CellPhone cellPhone = CellPhone();
    final Commerce commerce = Commerce();
    final Company company = Company();
    final CreditCard creditCard = CreditCard();
    final Finance finance = Finance();
    final Hacker hacker = Hacker();
    final Internet internet = Internet();
    final Lorem lorem = Lorem();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
    final Team team = Team();
}