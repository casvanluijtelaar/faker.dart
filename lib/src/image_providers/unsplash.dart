enum UnsplashCategory {
  food,
  nature,
  people,
  technology,
  objects,
  buildings,
}

class Unsplash {
  String image({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, null, keyword);

  String food({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.food, keyword);

  String people({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.people, keyword);

  String nature({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.nature, keyword);

  String technology({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.technology, keyword);

  String objects({int? w, int? h, String? keyword}) =>
      _imageUrl(w, h, UnsplashCategory.objects, keyword);

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

    if (category != null) url += '/category/' + _enumToString(category);

    url += '/${width}x$height';

    if (keyword != null) {
      final format = RegExp(r"^([A-Za-z0-9].+,[A-Za-z0-9]+)$|^([A-Za-z0-9]+)$");
      if (format.hasMatch(keyword)) url += '?$keyword';
    }
    return url;
  }

  String _enumToString(UnsplashCategory c) => c.toString().split('.').last;
}
