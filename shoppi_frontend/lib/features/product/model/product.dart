
import '../../../core/model/base_model.dart';

class ProductModel extends BaseModel<ProductModel> {
  double? weight;
  String? sId;
  String? image;
  double? price;
  String? title;
  double? total;

  ProductModel(
      {this.weight, this.sId, this.image, this.price, this.title, this.total});

  ProductModel.fromJson(Map<dynamic, dynamic> json) {
    weight = json['weight'].toDouble();
    sId = json['_id'];
    image = json['image'];
    price = json['price'].toDouble();
    title = json['title'];
    total = json['total'].toDouble() ?? 5;
  }

  @override
  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['weight'] = weight;
    data['image'] = image;
    data['price'] = price;
    data['title'] = title;
    data['total'] = total;
    data['sId'] = sId;
    return data;
  }

  @override
  ProductModel fromJson(Map<dynamic, dynamic> json) =>
      ProductModel.fromJson(json);
}