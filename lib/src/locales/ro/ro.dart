import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./internet.dart";
import "./date.dart";
import "./cell_phone.dart";
import "./address.dart";
class Ro extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Date date = Date();
    final Internet internet = Internet();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}