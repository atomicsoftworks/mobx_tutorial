class ImageRepository {
  static const nike = "assets/logos/nike.png";
  static const supreme = "assets/logos/supreme.png";
  static const adidas = "assets/logos/adidas.png";
  static const offWhite = 'assets/logos/off_white.png';
  static const balenciaga = 'assets/logos/balenciaga.png';

  static const _brands = {
    'nike': nike,
    'supreme': supreme,
    'adidas': adidas,
    'off-white': offWhite,
    'balenciaga': balenciaga,
  };

  static getLogo({required String brand}) {
    final key = brand.toLowerCase();
    return _brands.containsKey(key) ? _brands[key] : nike;
  }
}
