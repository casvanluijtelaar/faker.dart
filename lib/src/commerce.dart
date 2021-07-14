import 'package:faker_dart/src/utils/random_utils.dart';

import 'faker.dart';

/// {@macro commerce}
class Commerce {
  /// {@macro commerce}
  Commerce(this._faker);

  final Faker _faker;

  /// returns a random color name e.g. `red`
  String color() => RandomUtils.arrayElement(_faker.locale.commerce.color);

  /// returns a random commerce department e.g. `books`
  String department() =>
      RandomUtils.arrayElement(_faker.locale.commerce.department);

  /// returns a random product name e.g. `small steel chair`
  String productName() =>
      '${productAdjective()} ${productMaterial()} ${product()}';

  /// returns a random price.
  ///
  /// by default the price [symbol] will bil in dollars (`$`). the [min] and
  /// [max] price can be set to your personal preference, asswell as the amount
  /// of [decimals] places
  ///
  /// e.g. `$515.47`
  String price({
    double min = 1,
    double max = 1000,
    int decimals = 2,
    String symbol = '\$',
  }) {
    final value =
        _faker.datatype.float(min: min, max: max, precision: decimals);

    return '$symbol${value.toString()}';
  }

  /// returns a random product adjective e.g. `small`;
  String productAdjective() =>
      RandomUtils.arrayElement(_faker.locale.commerce.productName.adjective);

  /// returns a random product material e.g. `steel`
  String productMaterial() =>
      RandomUtils.arrayElement(_faker.locale.commerce.productName.material);

  /// returns a random product e.g. `Chair`
  String product() =>
      RandomUtils.arrayElement(_faker.locale.commerce.productName.product);

  /// returns a random sentence describing a product
  String productDescription() =>
      RandomUtils.arrayElement(_faker.locale.commerce.productDescription);
}
