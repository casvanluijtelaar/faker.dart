import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./address.dart";
class ZhCn extends FakerLocale {
    final Address address = Address();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}