part 'inapp/shop_strings.dart';

class AppStrings {
  static AppStrings? _instance =  AppStrings._init();
  static AppStrings get instance => _instance!;
  AppStrings._init();

  final shopConstants = _ShopStrings();

  String subHeroTag(int index) => 'subhero-$index';
  String listHeroTag(int index) => 'listhero-$index';

  String aboutProduct = 'About the Product';
  String addToCard = 'Add To Cart';
  String paymentTitle = 'Cart';
  String multi = 'x';
  String delivery  = 'Delivery';
  String orderFree = 'All order of \$40 or more quality for FREE delivery';
  String total = 'Total:';
  String next = 'Next';
}
