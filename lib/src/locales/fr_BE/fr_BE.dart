import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./internet.dart";
import "./cell_phone.dart";
import "./adresses.dart";
class FrBe extends FakerLocale {
    final Adresses adresses = Adresses();
    final CellPhone cellPhone = CellPhone();
    final Internet internet = Internet();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}