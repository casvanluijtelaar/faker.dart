import '../locales/_locales.dart';
import '../locales/af_ZA.dart';
import '../models/faker_locale.dart';

class LocaleUtils {
  static FakerLocale generateLocale(FakerLocaleType type) {
    final localeData = _enumToLocale(type);
    final completedData = FakerLocale.fromMap(localeData).toMap();
    final localeWithFallbackData = _recursiveNullReplace(completedData, en);

    return FakerLocale.fromMap(localeWithFallbackData);
  }

  static Map<String, dynamic> _recursiveNullReplace(
    Map<String, dynamic> base,
    Map<String, dynamic> replacement,
  ) {
    return base.map((key, value) {
      var updated = value;
      if (updated is Map<String, dynamic>) {
        updated = _recursiveNullReplace(base[key], replacement[key]);
      } else {
        updated ??= replacement[key];
      }

      return MapEntry(key, updated);
    });
  }

  static Map<String, dynamic> _enumToLocale(FakerLocaleType type) {
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

/// all support locales
enum FakerLocaleType {
  // ignore_for_file: constant_identifier_names
  // ignore_for_file: public_member_api_docs
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
