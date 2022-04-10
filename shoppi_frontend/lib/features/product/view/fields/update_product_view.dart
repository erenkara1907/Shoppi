// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../../../core/view/widget/counter/number_counter.dart';
import '../../model/product.dart';

class UpdateProductView extends StatelessWidget {
  final ProductModel product;
  final TextEditingController priceController;
  final TextEditingController titleController;
  final TextEditingController imageController;
  final Function(ProductModel product)? onComplete;

  const UpdateProductView(
      {Key? key,
      required this.product,
      required this.priceController,
      required this.titleController,
      required this.imageController,
      this.onComplete})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3,
      child: Padding(
        padding: const EdgeInsets.only(left: 150,right: 150,top: 30),
        child: Column(
          children: <Widget>[
            TextField(controller: priceController,decoration: const InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: 9),
                child: Text('Price',style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ),),
            TextField(controller: titleController,decoration: const InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: 9),
                child: Text('Title',style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ),),
            TextField(controller: imageController,decoration: const InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(top: 9),
                child: Text('Image  ',style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ),),
            Row(
              children: [
                const Text('Total',style:  TextStyle(fontWeight: FontWeight.bold),),
                NumberCounterWidget(
                  value: product.total,
                  onChange: (val) {
                    product.total = val;
                  },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                  onPressed: () {
                    product.image = imageController.text;
                    product.price = double.tryParse(priceController.text);
                    product.title = titleController.text;
                    onComplete!(product);
                  },
                  icon: const Icon(Icons.update),
                  label: const Text("Update")),
            )
          ],
        ),
      ),
    );
  }
}