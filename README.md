
[![Pub](https://img.shields.io/pub/v/faker_dart)](https://pub.dartlang.org/packages/faker_dart)
[![Pub](https://img.shields.io/github/stars/casvanluijtelaar/faker.dart)](https://github.com/casvanluijtelaar/faker.dart)
[![Pub](https://img.shields.io/github/last-commit/casvanluijtelaar/faker.dart)](https://github.com/casvanluijtelaar/faker.dart)
[![codecov](https://codecov.io/gh/casvanluijtelaar/faker.dart/branch/master/graph/badge.svg?token=V047CJZ1RU)](https://codecov.io/gh/casvanluijtelaar/faker.dart)

<h1 align="center">
  generate massive amounts of fake data in Dart & Flutter
</h1>


Faker.dart is a dart port of the famous [faker.js](https://github.com/Marak/faker.js) package for the web and NodeJS
## :hammer:  Usage

faker.dart is split up into modules, where every module has a bunch of faker methods.
### Basics

```dart
    final faker = Faker.instance;

    String randomName = faker.name.fullName(); // Rowan Nikolaus
    String randomHex = faker.datatype.hexaDecimal(); // 0xF74451AB
```
### Faker.fake()

faker.dart contains a super useful generator method `Faker.fake` for combining faker API methods using a mustache string format.

**Example:**


``` dart
print(faker.fake("{{name.lastName}}, {{name.firstName}} {{name.suffix}}"));
// outputs: "Marks, Dean Sr."
```

This will interpolate the format string with the value of methods `name.lastName()`, `name.firstName()`, and `name.suffix()`

### supported faker methods

| Module  | Methods |
| :----------:  | :---------: |
| datatype  | number, float, datetime, string, uuid, boolean, hexaDecimal, json, list |
| name  | fullName, firstName, lastName, middleName, findName, jobTitle, gender, prefix, suffix, title, jobDescriptor, jobArea, jobType |
| image | image, loremPicsum, lorempixel  |
| address  | zipCode, city, cityPrefix, citySuffix, cityName, streetName, streetSuffix, streetPrefix, streetAddress, secondaryAddress, county, country, countryCode, state, stateAbbr, latitude, longitude, direction, cardinalDirection, ordinalDirection, nearbyGPSCoordinate, timezone  |
| animal  | type, animal, dog, cat, snake, bear, lion, catecean, horse, bird, cow, fish, corocodilia, insect, rabbit  |
| commerce  | color, department, productName, price, productAdjective, productMaterial, product, productDescription |


## :speech_balloon: Localization

### faker.dart currently supports 54 Locales!!!


The default language locale is set to English.
if your chosen locale doesn't support specific faker data, it will fall back to the English locale.

```dart
// sets locale to de
faker.setLocale(FakerLocaleType.de);
// set the locale to your custom Locale:
final FakerLocale locale = FakerLocale(...);
faker.setCustomLocale(locale);
```
### currently internally supported locales: 
 * az
 * ar
 * cz
 * de
 * de_AT
 * de_CH
 * en
 * en_AU
 * en_AU_ocker
 * en_BORK
 * en_CA
 * en_GB
 * en_IE
 * en_IND
 * en_US
 * en_ZA
 * es
 * es_MX
 * fa
 * fi
 * fr
 * fr_CA
 * fr_CH
 * ge
 * hy
 * hr
 * id_ID
 * it
 * ja
 * ko
 * nb_NO
 * ne
 * nl
 * nl_BE
 * pl
 * pt_BR
 * pt_PT
 * ro
 * ru
 * sk
 * sv
 * tr
 * uk
 * vi
 * zh_CN
 * zh_TW

## :grey_question: what's up next
this package is still in active development. features still being added:

 * company
 * database
 * date
 * finance
 * git
 * hacker
 * iban
 * internet
 * lorem
 * mersenne
 * music
 * phonenumber
 * system
 * time
 * unique
 * vehicle
 * word


 ## :wave: Get Involved

If this package is useful to you please :thumbsup: on [pub.dev](https://pub.dev/packages/faker_dart) and :star: on [Github](https://github.com/casvanluijtelaar/faker.dart). If you have any Issues, recommendations or pull requests I'd love to see them!
