import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./internet.dart";
import "./address.dart";
class FrCa extends FakerLocale {
    final Address address = Address();
    final Internet internet = Internet();
    final PhoneNumber phoneNumber = PhoneNumber();
}