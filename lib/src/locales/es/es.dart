import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./internet.dart";
import "./company.dart";
import "./commerce.dart";
import "./cell_phone.dart";
import "./address.dart";
class Es extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Commerce commerce = Commerce();
    final Company company = Company();
    final Internet internet = Internet();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}