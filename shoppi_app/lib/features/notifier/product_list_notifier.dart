import 'package:flutter/material.dart';
import '../shop/model/product.dart';

class ProductListNotifier extends ChangeNotifier {
  List<Product> productList = [];

  void addProduct(Product product) {
    // ignore: unused_local_variable
    final elementIndex =
        productList.indexWhere((element) => element == product);
    if (elementIndex == -1) {
      productList.add(product);
    } else {
      if (product.count == 0 && product.count == null)
        // ignore: list_remove_unrelated_type, curly_braces_in_flow_control_structures
        productList.remove(elementIndex);
      else
        // ignore: curly_braces_in_flow_control_structures
        productList[elementIndex] = product;
    }
    notifyListeners();
  }
}
