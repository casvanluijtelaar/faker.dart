import 'package:faker_dart/src/locales.dart';

import "./phone_number.dart";
import "./name.dart";
import "./lorem.dart";
import "./internet.dart";
import "./date.dart";
import "./commerce.dart";
import "./address.dart";
class Hy extends FakerLocale {
    final Address address = Address();
    final Commerce commerce = Commerce();
    final Date date = Date();
    final Internet internet = Internet();
    final Lorem lorem = Lorem();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}