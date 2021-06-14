import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./lorem.dart";
import "./internet.dart";
import "./date.dart";
import "./company.dart";
import "./commerce.dart";
import "./cell_phone.dart";
import "./address.dart";
class Lv extends FakerLocale {
    final Address address = Address();
    final CellPhone cellPhone = CellPhone();
    final Commerce commerce = Commerce();
    final Company company = Company();
    final Date date = Date();
    final Internet internet = Internet();
    final Lorem lorem = Lorem();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}