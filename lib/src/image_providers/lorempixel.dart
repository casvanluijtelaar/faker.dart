import 'dart:math';

enum LoremPixelCategory {
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

class LoremPixel {
  String image({int? width, int? height}) => _imageUrl(width, height, null);

  String abstract({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.abstract);

  String animals({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.animals);

  String business({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.business);

  String cats({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.cats);

  String city({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.city);

  String food({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.food);

  String nightlife({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.nightlife);

  String fashion({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.fashion);

  String people({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.people);

  String nature({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.nature);

  String sports({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.sports);

  String technics({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.technics);

  String transport({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.transport);

  String _imageUrl(
    int? w,
    int? h,
    LoremPixelCategory? category,
  ) {
    final width = w ?? 640;
    final height = h ?? 480;

    var url = 'https://lorempixel.com/$width/$height';

    if (category != null) url += '/${_enumToString(category)}';
    url += '${Random().nextInt(99999)}';

    return url;
  }

  String _enumToString(LoremPixelCategory c) => c.toString().split('.').last;
}
