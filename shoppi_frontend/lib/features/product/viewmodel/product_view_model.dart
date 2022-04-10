import 'dart:convert';
import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../../../core/constants/app_constants.dart';
import '../../../core/model/global_model.dart';
import '../../../core/view/base/base_state.dart';
import '../model/product.dart';
import '../service/product_service.dart';
import '../view/fields/update_product_view.dart';

abstract class ProductViewModel extends BaseState {
  IO.Socket socket = IO.io(AppConstants.SOCKET_URL);

  final TextEditingController priceController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  List<ProductModel> products = [];

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ProductService service = ProductService();

  @override
  void initState() {
    super.initState();
    initSocket();
  }

  Future<List<ProductModel>> fetchAllDatas() async {
    if (products.isEmpty) {
      products = await service.fetchProducts();
    }
    return products;
  }

  Future onCompleteForm(ProductModel model) async {
    final response = await service.postProduct(model);
    if (response is ProductModel) {
      products = await service.fetchProducts();
      setState(() {});
    } else {
      final body = jsonEncode(response);
      final jsonModel = jsonDecode(body);
      scaffoldKey.currentState!
          // ignore: deprecated_member_use
          .showSnackBar(SnackBar(content: Text(jsonModel['message'])));
    }
  }

  void showProductSheet(int index) {
    priceController.text = products[index].price.toString();
    titleController.text = products[index].title.toString();
    imageController.text = products[index].image.toString();
    showModalBottomSheet(
        context: context,
        builder: (context) => UpdateProductView(
              product: products[index],
              priceController: priceController,
              titleController: titleController,
              imageController: imageController,
              onComplete: (product) {
                var globalModel = GlobalModel(index: index, model: product);
                onSendSocketMessage(globalModel.toJson());
                Navigator.of(context).pop();
                setState(() {});
              },
            ));
  }

  void initSocket() {
    socket.on('connect', (_) {});
    // ignore: avoid_print
    socket.on('disconnect', (_) => print('disconnect'));
    // ignore: avoid_print
    socket.on('fromServer', (_) => print(_));
  }

  void onSendSocketMessage(String message) {
    socket.emit(AppConstants.SOCKET_CHANNEL, message);
  }
}