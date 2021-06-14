import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./lorem.dart";
import "./cell_phone.dart";
import "./address.dart";
class Ja extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Lorem lorem = Lorem();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}