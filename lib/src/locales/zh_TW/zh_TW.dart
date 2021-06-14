import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./address.dart";
class ZhTw extends FakerLocale {
    final Address address = Address();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}