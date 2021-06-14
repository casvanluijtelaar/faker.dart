import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./internet.dart";
import "./cell_phone.dart";
import "./address.dart";
class EnGb extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Internet internet = Internet();
    final PhoneNumber phoneNumber = PhoneNumber();
}