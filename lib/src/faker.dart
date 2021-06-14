import 'package:faker_dart/src/image.dart';
import 'package:faker_dart/src/time.dart';

class Faker {
  Faker({String locale = 'en'}) {
    _locale = _supportedLocales.contains(locale) ? locale : 'en';
  }

  late String _locale;
  late Map<String, dynamic> _localeData;

  final List<String> _supportedLocales = ['en'];
  set locale(String locale) {
    _locale = locale;
  }

  final Time time = Time();
  final Image image = Image();
}
