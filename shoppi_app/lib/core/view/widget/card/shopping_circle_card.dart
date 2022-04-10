import 'package:flutter/material.dart';

import '../../../../features/shop/model/product.dart';
import '../../../constants/app_strings.dart';

class ShoppingCardCircle extends StatelessWidget {
  const ShoppingCardCircle({
    Key? key,
    required this.currentTheme,
    required this.product,
    this.index,
    this.isBadge = true,
  }) : super(key: key);

  final ThemeData currentTheme;
  final Product? product;
  final int? index;
  final bool isBadge;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: index == null ? buildColumnCircle : buildHeroColumCircle,
    );
  }

  Hero get buildHeroColumCircle {
    return Hero(
      tag: index != null ? AppStrings.instance.subHeroTag(index!) : const SizedBox(),
      child: buildColumnCircle,
    );
  }

  Column get buildColumnCircle => Column(
        children: <Widget>[
          const Spacer(),
          Expanded(
              child:
                  Stack(children: <Widget>[buildCircleImageAvatar(), badge])),
          const Spacer(),
        ],
      );

  Widget get badge => Visibility(
        visible: product!.count != 0 && isBadge,
        child: Positioned(
          top: 0,
          right: 0,
          height: 14,
          width: 14,
          child: CircleAvatar(
            backgroundColor: currentTheme.errorColor,
            child: Text(
              product!.count != null ? product!.count.toString() : '1',
              style: currentTheme.textTheme.headline6!
                  .copyWith(color: currentTheme.canvasColor),
            ),
          ),
        ),
      );

  CircleAvatar buildCircleImageAvatar() {
    return CircleAvatar(
      backgroundColor: currentTheme.canvasColor,
      child: Image.network(
        product!.image!,
        height: 20,
        width: 20,
      ),
    );
  }
}