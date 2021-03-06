// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Commerce {
  final List<String>? color;
  final List<String>? department;
  final List<String>? productDescription;
  final ProductName productName;
  Commerce({
    this.color,
    this.department,
    this.productDescription,
    required this.productName,
  });

  Commerce copyWith({
    List<String>? color,
    List<String>? department,
    List<String>? productDescription,
    ProductName? productName,
  }) {
    return Commerce(
      color: color ?? this.color,
      department: department ?? this.department,
      productDescription: productDescription ?? this.productDescription,
      productName: productName ?? this.productName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'color': color,
      'department': department,
      'productDescription': productDescription,
      'productName': productName.toMap(),
    };
  }

  factory Commerce.fromMap(Map<String, dynamic> map) {
    return Commerce(
      color: map['color'],
      department: map['department'],
      productDescription: map['productDescription'],
      productName: ProductName.fromMap(map['productName'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Commerce.fromJson(String source) =>
      Commerce.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Commerce(color: $color, department: $department, productDescription: $productDescription, productName: $productName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Commerce &&
        listEquals(other.color, color) &&
        listEquals(other.department, department) &&
        listEquals(other.productDescription, productDescription) &&
        other.productName == productName;
  }

  @override
  int get hashCode {
    return color.hashCode ^
        department.hashCode ^
        productDescription.hashCode ^
        productName.hashCode;
  }
}

class ProductName {
  final List<String>? adjective;
  final List<String>? material;
  final List<String>? product;
  ProductName({
    this.adjective,
    this.material,
    this.product,
  });

  ProductName copyWith({
    List<String>? adjective,
    List<String>? material,
    List<String>? product,
  }) {
    return ProductName(
      adjective: adjective ?? this.adjective,
      material: material ?? this.material,
      product: product ?? this.product,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adjective': adjective,
      'material': material,
      'product': product,
    };
  }

  factory ProductName.fromMap(Map<String, dynamic> map) {
    return ProductName(
      adjective: map['adjective'],
      material: map['material'],
      product: map['product'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductName.fromJson(String source) =>
      ProductName.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProductName(adjective: $adjective, material: $material, product: $product)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is ProductName &&
        listEquals(other.adjective, adjective) &&
        listEquals(other.material, material) &&
        listEquals(other.product, product);
  }

  @override
  int get hashCode => adjective.hashCode ^ material.hashCode ^ product.hashCode;
}
