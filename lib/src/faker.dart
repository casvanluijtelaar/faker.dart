import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/locales/af_ZA.dart';
import 'package:faker_dart/src/locales/ar.dart';
import 'package:faker_dart/src/locales/az.dart';
import 'package:faker_dart/src/locales/cz.dart';
import 'package:faker_dart/src/locales/de.dart';
import 'package:faker_dart/src/locales/de_AT.dart';
import 'package:faker_dart/src/locales/de_CH.dart';
import 'package:faker_dart/src/locales/el.dart';
import 'package:faker_dart/src/locales/en.dart';
import 'package:faker_dart/src/locales/en_AU.dart';
import 'package:faker_dart/src/locales/en_AU_ocker.dart';
import 'package:faker_dart/src/locales/en_BORK.dart';
import 'package:faker_dart/src/locales/en_CA.dart';
import 'package:faker_dart/src/locales/en_GB.dart';
import 'package:faker_dart/src/locales/en_GH.dart';
import 'package:faker_dart/src/locales/en_IE.dart';
import 'package:faker_dart/src/locales/en_IND.dart';
import 'package:faker_dart/src/locales/en_NG.dart';
import 'package:faker_dart/src/locales/en_US.dart';
import 'package:faker_dart/src/locales/en_ZA.dart';
import 'package:faker_dart/src/locales/es.dart';
import 'package:faker_dart/src/locales/es_MX.dart';
import 'package:faker_dart/src/locales/fa.dart';
import 'package:faker_dart/src/locales/fi.dart';
import 'package:faker_dart/src/locales/fr.dart';
import 'package:faker_dart/src/locales/fr_BE.dart';
import 'package:faker_dart/src/locales/fr_CA.dart';
import 'package:faker_dart/src/locales/fr_CH.dart';
import 'package:faker_dart/src/locales/ge.dart';
import 'package:faker_dart/src/locales/he.dart';
import 'package:faker_dart/src/locales/hr.dart';
import 'package:faker_dart/src/locales/hy.dart';
import 'package:faker_dart/src/locales/id_ID.dart';
import 'package:faker_dart/src/locales/it.dart';
import 'package:faker_dart/src/locales/ja.dart';
import 'package:faker_dart/src/locales/ko.dart';
import 'package:faker_dart/src/locales/lv.dart';
import 'package:faker_dart/src/locales/mk.dart';
import 'package:faker_dart/src/locales/nb_NO.dart';
import 'package:faker_dart/src/locales/ne.dart';
import 'package:faker_dart/src/locales/nl.dart';
import 'package:faker_dart/src/locales/nl_BE.dart';
import 'package:faker_dart/src/locales/pl.dart';
import 'package:faker_dart/src/locales/pt_BR.dart';
import 'package:faker_dart/src/locales/pt_PT.dart';
import 'package:faker_dart/src/locales/ro.dart';
import 'package:faker_dart/src/locales/ru.dart';
import 'package:faker_dart/src/locales/sk.dart';
import 'package:faker_dart/src/locales/sv.dart';
import 'package:faker_dart/src/locales/tr.dart';
import 'package:faker_dart/src/locales/uk.dart';
import 'package:faker_dart/src/locales/vi.dart';
import 'package:faker_dart/src/locales/zh_CN.dart';
import 'package:faker_dart/src/locales/zh_TW.dart';
import 'package:faker_dart/src/locales/zu_ZA.dart';
import 'package:faker_dart/src/random.dart';

import 'models/faker_locale.dart';

class Faker {
  Faker({this.locale = FakerLocaleType.en}) {
    final localeData = _enumToLocale(locale);
    _locale = FakerLocale.fromMap(localeData);
  }

  final FakerLocaleType locale;
  late FakerLocale _locale;

  final Randoms random = Randoms();
  final DataType dataType = DataType();

  Map<String, dynamic> _enumToLocale(FakerLocaleType type) {
    switch (type) {
      case FakerLocaleType.af_ZA:
        return af_ZA;
      case FakerLocaleType.ar:
        return ar;
      case FakerLocaleType.az:
        return az;
      case FakerLocaleType.cz:
        return cz;
      case FakerLocaleType.de:
        return de;
      case FakerLocaleType.de_AT:
        return de_AT;
      case FakerLocaleType.de_CH:
        return de_CH;
      case FakerLocaleType.el:
        return el;
      case FakerLocaleType.en:
        return en;
      case FakerLocaleType.en_AU:
        return en_AU;
      case FakerLocaleType.en_AU_ocker:
        return en_AU_ocker;
      case FakerLocaleType.en_BORK:
        return en_BORK;
      case FakerLocaleType.en_CA:
        return en_CA;
      case FakerLocaleType.en_GB:
        return en_GB;
      case FakerLocaleType.en_GH:
        return en_GH;
      case FakerLocaleType.en_IE:
        return en_IE;
      case FakerLocaleType.en_IND:
        return en_IND;
      case FakerLocaleType.en_NG:
        return en_NG;
      case FakerLocaleType.en_US:
        return en_US;
      case FakerLocaleType.en_ZA:
        return en_ZA;
      case FakerLocaleType.es:
        return es;
      case FakerLocaleType.es_MX:
        return es_MX;
      case FakerLocaleType.fa:
        return fa;
      case FakerLocaleType.fi:
        return fi;
      case FakerLocaleType.fr:
        return fr;
      case FakerLocaleType.fr_BE:
        return fr_BE;
      case FakerLocaleType.fr_CA:
        return fr_CA;
      case FakerLocaleType.fr_CH:
        return fr_CH;
      case FakerLocaleType.ge:
        return ge;
      case FakerLocaleType.he:
        return he;
      case FakerLocaleType.hr:
        return hr;
      case FakerLocaleType.hy:
        return hy;
      case FakerLocaleType.id_ID:
        return id_ID;
      case FakerLocaleType.it:
        return it;
      case FakerLocaleType.ja:
        return ja;
      case FakerLocaleType.ko:
        return ko;
      case FakerLocaleType.lv:
        return lv;
      case FakerLocaleType.mk:
        return mk;
      case FakerLocaleType.nb_NO:
        return nb_NO;
      case FakerLocaleType.ne:
        return ne;
      case FakerLocaleType.nl:
        return nl;
      case FakerLocaleType.nl_BE:
        return nl_BE;
      case FakerLocaleType.pl:
        return pl;
      case FakerLocaleType.pt_BR:
        return pt_BR;
      case FakerLocaleType.pt_PT:
        return pt_PT;
      case FakerLocaleType.ro:
        return ro;
      case FakerLocaleType.ru:
        return ru;
      case FakerLocaleType.sk:
        return sk;
      case FakerLocaleType.sv:
        return sv;
      case FakerLocaleType.tr:
        return tr;
      case FakerLocaleType.uk:
        return uk;
      case FakerLocaleType.vi:
        return vi;
      case FakerLocaleType.zh_CN:
        return zh_CN;
      case FakerLocaleType.zh_TW:
        return zh_TW;
      case FakerLocaleType.zu_ZA:
        return zu_ZA;
    }
  }
}

enum FakerLocaleType {
  af_ZA,
  ar,
  az,
  cz,
  de,
  de_AT,
  de_CH,
  el,
  en,
  en_AU,
  en_AU_ocker,
  en_BORK,
  en_CA,
  en_GB,
  en_GH,
  en_IE,
  en_IND,
  en_NG,
  en_US,
  en_ZA,
  es,
  es_MX,
  fa,
  fi,
  fr,
  fr_BE,
  fr_CA,
  fr_CH,
  ge,
  he,
  hr,
  hy,
  id_ID,
  it,
  ja,
  ko,
  lv,
  mk,
  nb_NO,
  ne,
  nl,
  nl_BE,
  pl,
  pt_BR,
  pt_PT,
  ro,
  ru,
  sk,
  sv,
  tr,
  uk,
  vi,
  zh_CN,
  zh_TW,
  zu_ZA,
}
