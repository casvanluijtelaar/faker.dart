/// types of image catogories unsplash can provide
enum UnsplashCategory {
  // ignore_for_file: public_member_api_docs
  food,
  nature,
  people,
  technology,
  objects,
  buildings,
}

/// {@macro unsplash}
class Unsplash {
  /// return a random image with a specific width & height and an
  /// optional keyword
  String image({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, null, keyword);

  /// return a random food image with a specific width & height and an
  /// optional keyword
  String food({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.food, keyword);

  /// return a random people image with a specific width & height and an
  /// optional keyword
  String people({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.people, keyword);

  /// return a random natureimage with a specific width & height and an
  /// optional keyword
  String nature({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.nature, keyword);

  /// return a random technology image with a specific width & height and an
  /// optional keyword
  String technology({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.technology, keyword);

  /// return a random object image with a specific width & height and an
  /// optional keyword
  String objects({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.objects, keyword);

  /// return a random building image with a specific width & height and an
  /// optional keyword
  String buildings({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.buildings, keyword);

  String _imageUrl(
    int? w,
    int? h,
    UnsplashCategory? category,
    String? keyword,
  ) {
    final width = w ?? 640;
    final height = h ?? 480;

    var url = 'https://source.unsplash.com';

    if (category != null) url += '/category/${_enumToString(category)}';

    url += '/${width}x$height';

    if (keyword != null) {
      final format = RegExp(r'^([A-Za-z0-9].+,[A-Za-z0-9]+)$|^([A-Za-z0-9]+)$');
      if (format.hasMatch(keyword)) url += '?$keyword';
    }
    return url;
  }

  String _enumToString(UnsplashCategory c) => c.toString().split('.').last;
}
