import 'package:flutter/material.dart';
import '../model/product.dart';
import '../viewmodel/product_view_model.dart';
import 'fields/create_product_view.dart';

class ProductView extends ProductViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Product List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => CreateProductView(
              onComplete: (model) => onCompleteForm(model),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: buildFutureBuilder(),
    );
  }

  FutureBuilder<List<ProductModel>> buildFutureBuilder() {
    return FutureBuilder<List<ProductModel>>(
      future: fetchAllDatas(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            if (snapshot.hasData) return buildListViewWidget(snapshot.data!);
            return const Text("error");
          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }

  Widget get addMenuWidget => Card(
        margin: const EdgeInsets.all(15),
        child: Form(
          child: ListView(
            padding: EdgeInsets.all(dynamicHeight(0.05)),
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Product Title",
                  icon: Icon(Icons.text_fields),
                ),
              ),
              TextFormField(
                  decoration: const InputDecoration(hintText: "Product Image")),
              TextFormField(
                  decoration: const InputDecoration(hintText: "Product Price")),
              FloatingActionButton.extended(
                  onPressed: () {}, label: const Text("Save"))
            ],
          ),
        ),
      );

  ListView buildListViewWidget(List<ProductModel> data) {
    return ListView.builder(
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(data[index].title!),
          subtitle: Text("${data[index].weight}g  Total: ${data[index].total}  Price: ${data[index].price}"),
          leading: Image.network(data[index].image!,width: 20, height: 20,),
          trailing: IconButton(
              icon: const Icon(Icons.edit), onPressed: () => showProductSheet(index)),
        ),
      ),
      itemCount: data.length,
    );
  }
}