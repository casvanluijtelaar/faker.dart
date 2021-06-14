import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./lorem.dart";
import "./internet.dart";
import "./cell_phone.dart";
import "./address.dart";
class Tr extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Internet internet = Internet();
    final Lorem lorem = Lorem();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}