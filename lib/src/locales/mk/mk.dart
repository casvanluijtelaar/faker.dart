import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./internet.dart";
import "./date.dart";
import "./company.dart";
import "./cell_phone.dart";
import "./address.dart";
class Mk extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Company company = Company();
    final Date date = Date();
    final Internet internet = Internet();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}