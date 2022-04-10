
import '../../../core/model/base_model.dart';

class Product extends BaseModel {
  String? image;
  double? price;
  String? title;
  String? sId;
  int? weight;
  int? count;
  int? total;

  Product(
      {this.image,
      this.price,
      this.title,
      this.weight,
      this.count =  1,
      this.total = 999});

  Product.fromJson(Map<dynamic, dynamic> json) {
    weight = json['weight'];
    sId = json['_id'];
    image = json['image'];
    price = double.tryParse(json['price'].toString()) ??
        int.tryParse(json['price'])!.toDouble();
    title = json['title'];
    total = json['total'] ?? 5;
  }

  @override
  Map<dynamic, dynamic> toJson() {
    // ignore: unnecessary_new, prefer_collection_literals
    final Map<dynamic, dynamic> data = Map<dynamic, dynamic>();
    data['weight'] = weight;
    data['_id'] = sId;
    data['image'] = image;
    data['price'] = price;
    data['title'] = title;
    data['total'] = total;
    return data;
  }

  @override
  Product fromJson(Map<dynamic, dynamic> json) => Product.fromJson(json);

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Product && o.title == title;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        price.hashCode ^
        title.hashCode ^
        sId.hashCode ^
        weight.hashCode ^
        count.hashCode ^
        total.hashCode;
  }
}

List<Product> dummyList = [
  Product(
      image: "https://kz.all.biz/img/kz/catalog/1316296.png",
      price: 7.77,
      title: "Macaroni of the Granoro n Spaghetti. 16 Capellini buy in Almaty",
      total: 10,
      weight: 500),
  Product(
      image:
          "https://sc02.alicdn.com/kf/UTB8NueHviDEXKJk43Oq763z3XXa9/931808589/UTB8NueHviDEXKJk43Oq763z3XXa9.png",
      price: 11.27,
      title:
          "Italian Pasta,Granoro Penne Rigate N. 26 - Buy Italian Pasta Penne Rigate,Pasta,Italian Pasta Brands Product on Alibaba.com",
      total: 10,
      weight: 500),
  Product(
      image: "https://sc02.alicdn.com/kf/UTB8v66ouo_4iuJk43Fq762.FpXa9.png",
      price: 7.74,
      title:
          "Italian Pasta,Granoro Nest Shaped Fettuccine - Buy Italian Pasta Brands,Italian Fettuccine,Italian Pasta Product on Alibaba.com",
      total: 10,
      weight: 500),
  Product(
      image:
          "https://sc02.alicdn.com/kf/UTB8v66ouo_4iuJk43Fq762.FpXa9.png",
      price: 5.27,
      title: "Short pasta | GRANORO - IL PRIMO",
      total: 10,
      weight: 500)
];

Product singleModel = Product(
    image:
        "https://cdn.shopify.com/s/files/1/2786/0986/products/granoro-spaghetti-tagliati-n68-the-italian-shop-free-delivery_580x.png?v=1548429175",
    price: 1.19,
    title: "Granoro -Spaghetti Tagliati - N.68",
    total: 10,
    weight: 500);