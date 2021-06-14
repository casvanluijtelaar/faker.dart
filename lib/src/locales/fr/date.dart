class Date {

// Source: http://unicode.org/cldr/trac/browser/tags/release-27/common/main/en.xml#L1799
Map<String, dynamic> month = {
  "wide": [
    'janvier',
    'février',
    'mars',
    'avril',
    'mai',
    'juin',
    'juillet',
    'août',
    'septembre',
    'octobre',
    'novembre',
    'décembre',
  ],
  // Property "wide_context" is optional, if not set then "wide" will be used instead
  // It is used to specify a word in context, which may differ from a stand-alone word
  "wide_context": [
    'janvier',
    'février',
    'mars',
    'avril',
    'mai',
    'juin',
    'juillet',
    'août',
    'septembre',
    'octobre',
    'novembre',
    'décembre',
  ],
  "abbr": [
    'janv.',
    'févr.',
    'mars',
    'avril',
    'mai',
    'juin',
    'juil.',
    'août',
    'sept.',
    'oct.',
    'nov.',
    'déc.',
  ],
  // Property "abbr_context" is optional, if not set then "abbr" will be used instead
  // It is used to specify a word in context, which may differ from a stand-alone word
  "abbr_context": [
    'janv.',
    'févr.',
    'mars',
    'avril',
    'mai',
    'juin',
    'juil.',
    'août',
    'sept.',
    'oct.',
    'nov.',
    'déc.',
  ],
};

// Source: http://unicode.org/cldr/trac/browser/tags/release-27/common/main/en.xml#L1847
Map<String, dynamic> weekday = {
  "wide": [
    "Dimanche",
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi"
  ],
  // Property "wide_context" is optional, if not set then "wide" will be used instead
  // It is used to specify a word in context, which may differ from a stand-alone word
  "wide_context": [
    "Dimanche",
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi"
  ],
  "abbr": [
    "Dim",
    "Lun",
    "Mar",
    "Mer",
    "Jeu",
    "Ven",
    "Sam"
  ],
  // Property "abbr_context" is optional, if not set then "abbr" will be used instead
  // It is used to specify a word in context, which may differ from a stand-alone word
  "abbr_context": [
    "Dim",
    "Lun",
    "Mar",
    "Mer",
    "Jeu",
    "Ven",
    "Sam"
  ]
};

}