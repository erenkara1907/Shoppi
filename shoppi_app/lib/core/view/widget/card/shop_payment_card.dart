import 'package:flutter/material.dart';
import '../../../../features/shop/model/product.dart';
import '../../../constants/app_strings.dart';
import '../../base/base_stateless.dart';
import 'shopping_circle_card.dart';

class ShopPaymentCard extends BaseStateless {
  final Product? item;

  // ignore: use_key_in_widget_constructors
  ShopPaymentCard({Key? key, this.item});
  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    return SizedBox(
      height: dynamicHeight(context: context, val: 0.1),
      child: Row(
        children: <Widget>[
          circleImage(currentTheme),
          const Spacer(),
          buildExpandedCountNumber(context),
          const Spacer(),
          buildExpandedMultiText(context),
          const Spacer(),
          buildExpandedTitle(context),
          const Spacer(),
          buildExpandedMoney(context),
        ],
      ),
    );
  }

  Expanded buildExpandedMoney(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Text(
        " \$${item!.price! * item!.count!}",
        textScaleFactor: 0.8,
        maxLines: 2,
        style: Theme.of(context)
            .primaryTextTheme
            .headline3!
            .copyWith(color: Theme.of(context).splashColor),
      ),
    );
  }

  Expanded buildExpandedTitle(BuildContext context) {
    return Expanded(
      flex: 12,
      child: Text(
        item!.title!,
        maxLines: 2,
        textScaleFactor: 0.8,
        style: Theme.of(context)
            .primaryTextTheme
            .headline3!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget buildExpandedMultiText(BuildContext context) {
    return Text(
      AppStrings.instance.multi,
      style: Theme.of(context).primaryTextTheme.headline3,
    );
  }

  Widget buildExpandedCountNumber(BuildContext context) {
    return Text(
      item!.count.toString(),
      style: Theme.of(context).primaryTextTheme.headline3,
    );
  }

  Widget circleImage(ThemeData currentTheme) => ShoppingCardCircle(
        currentTheme: currentTheme,
        product: item,
        isBadge: false,
      );
}