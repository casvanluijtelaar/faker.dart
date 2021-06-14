import '../../locales.dart';
import "./phone_number.dart";
import "./name.dart";
import "./internet.dart";
import "./company.dart";
import "./address.dart";
class EnAu extends FakerLocale {
    final Address address = Address();
    final Company company = Company();
    final Internet internet = Internet();
    final Name name = Name();
    final PhoneNumber phoneNumber = PhoneNumber();
}