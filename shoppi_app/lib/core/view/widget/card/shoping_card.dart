import 'package:flutter/material.dart';

import '../../../../features/shop/model/product.dart';
import '../../base/base_stateless.dart';

class ShoppingCard extends BaseStateless {
  final Product? product;
  final EdgeInsets? padding;
  final double? radius;

  // ignore: use_key_in_widget_constructors
  ShoppingCard({Key? key, this.product, this.padding, this.radius});
  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(dynamicWidth(context: context, val: 0.04)))),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildExpandedImage(),
            buildText(currentTheme),
            SizedBox(height: height * 0.01),
            buildTitleText(currentTheme),
            SizedBox(height: height * 0.005),
            buildWeightText(currentTheme)
          ],
        ),
      ),
    );
  }

  Text buildWeightText(ThemeData currentTheme) {
    return Text(
      "${product!.weight!.toInt()} g",
      style: currentTheme.textTheme.headline6!
          .copyWith(fontWeight: FontWeight.w300),
    );
  }

  Text buildTitleText(ThemeData currentTheme) {
    return Text(
      product!.title!,
      maxLines: 2,
      style: currentTheme.textTheme.headline6,
    );
  }

  Text buildText(ThemeData currentTheme) {
    return Text(
      "\$ ${product!.price!}",
      style: currentTheme.textTheme.headline4!
          .copyWith(fontWeight: FontWeight.bold),
    );
  }

  Expanded buildExpandedImage() {
    return Expanded(
      child: Center(
        child: AspectRatio(
            aspectRatio: 1 / 3, child: Image.network(product!.image!)),
      ),
    );
  }
}