import 'dart:math';

enum LorempixelCategory {
  abstract,
  animals,
  business,
  cats,
  city,
  food,
  nightlife,
  fashion,
  people,
  nature,
  sports,
  technics,
  transport,
}

class Lorempixel {
  String abstract(width, height) =>
      _imageUrl(width, height, LorempixelCategory.abstract);

  String animals(width, height) =>
      _imageUrl(width, height, LorempixelCategory.animals);

  String business(width, height) =>
      _imageUrl(width, height, LorempixelCategory.business);

  String cats(width, height) =>
      _imageUrl(width, height, LorempixelCategory.cats);

  String city(width, height) =>
      _imageUrl(width, height, LorempixelCategory.city);

  String food(width, height) =>
      _imageUrl(width, height, LorempixelCategory.food);

  String nightlife(width, height) =>
      _imageUrl(width, height, LorempixelCategory.nightlife);

  String fashion(width, height) =>
      _imageUrl(width, height, LorempixelCategory.fashion);

  String people(width, height) =>
      _imageUrl(width, height, LorempixelCategory.people);

  String nature(width, height) =>
      _imageUrl(width, height, LorempixelCategory.nature);

  String sports(width, height) =>
      _imageUrl(width, height, LorempixelCategory.sports);

  String technics(width, height) =>
      _imageUrl(width, height, LorempixelCategory.technics);

  String transport(width, height) =>
      _imageUrl(width, height, LorempixelCategory.transport);

  String _imageUrl(
    double? w,
    double? h,
    LorempixelCategory? category,
  ) {
    final width = w ?? 640;
    final height = h ?? 480;

    var url = 'https://lorempixel.com/$width/$height';

    if (category != null) url += '/${_enumToString(category)}';
    url += '${Random().nextInt(99999)}';

    return url;
  }

  String _enumToString(LorempixelCategory c) => c.toString().split('.').last;
}
