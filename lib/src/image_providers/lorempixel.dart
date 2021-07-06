import 'dart:math';

/// types of image catogories lorempixel can provide
enum LoremPixelCategory {
  // ignore_for_file: public_member_api_docs
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

/// handles image retrieval from `lorempixel.com`
class LoremPixel {
  /// return a random image with a specific width & height
  String image({int? width, int? height}) => _imageUrl(width, height, null);

  /// return a random abstract image with a specific width & height
  String abstract({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.abstract);

  /// return a random animal image with a specific width & height
  String animals({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.animals);

  /// return a random business image with a specific width & height
  String business({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.business);

  /// return a random cat image with a specific width & height
  String cats({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.cats);

  /// return a random city image with a specific width & height
  String city({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.city);

  /// return a random food image with a specific width & height
  String food({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.food);

  /// return a random nightlife image with a specific width & height
  String nightlife({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.nightlife);

  /// return a random fashion image with a specific width & height
  String fashion({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.fashion);

  /// return a random people with a specific width & height
  String people({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.people);

  /// return a random nature image with a specific width & height
  String nature({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.nature);

  /// return a random sport image with a specific width & height
  String sports({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.sports);

  /// return a random technic image with a specific width & height
  String technics({int? width, int? height}) =>
      _imageUrl(width, height, LoremPixelCategory.technics);

  /// return a random transport image with a specific width & height
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
