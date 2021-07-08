# Faker.dart  - generate massive amounts of fake data in Dart & Flutter


Faker.dart is a dart port of the famous [faker.js](https://github.com/Marak/faker.js) package for the web and NodeJS
## basic Usage

```dart
    final faker = Faker.instance;

    String randomName = faker.name.fullName(); // Rowan Nikolaus
    String randomHex = faker.datatype.hexaDecimal(); // 0xF74451AB
```
## Faker.fake()

faker.dart contains a super useful generator method `Faker.fake` for combining faker API methods using a mustache string format.

**Example:**


``` dart
print(faker.fake("{{name.lastName}}, {{name.firstName}} {{name.suffix}}"));
// outputs: "Marks, Dean Sr."
```

This will interpolate the format string with the value of methods `name.lastName()`, `name.firstName()`, and `name.suffix()`

### supported faker methods


* datatype
  * number
  * float
  * datetime
  * string
  * uuid
  * boolean
  * hexaDecimal
  * json
  * list
* name  
  * fullName
  * firstName
  * lastName
  * middleName
  * findName
  * jobTitle
  * gender
  * prefix
  * suffix
  * title
  * jobDescriptor
  * jobArea
  * jobType



## Localization

### faker.dart currently supports 54 Locales!!!


The default language locale is set to English.
if your chosen locale doesn't support specific faker data, it will fall back to the English locale.

```dart
// sets locale to de
faker.setLocale(FakerLocaleType.en);
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

## what's up next
this package is still in active development. features still being added:

 * address
 * animal
 * commerce
 * company
 * database
 * date
 * finance
 * git
 * hacker
 * iban
 * image
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