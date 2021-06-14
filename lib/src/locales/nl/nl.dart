import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./lorem.dart";
import "./internet.dart";
import "./hacker.dart";
import "./date.dart";
import "./company.dart";
import "./commerce.dart";
import "./address.dart";
class Nl extends FakerLocale {
    final Address address = Address();
    final Commerce commerce = Commerce();
    final Company company = Company();
    final Date date = Date();
    final Hacker hacker = Hacker();
    final Internet internet = Internet();
    final Lorem lorem = Lorem();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}