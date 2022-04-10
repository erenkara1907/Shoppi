import 'package:flutter/material.dart';

import '../../base/base_stateless.dart';

class EmptyHeightWidget extends BaseStateless {
  final double? val;

  // ignore: use_key_in_widget_constructors
  EmptyHeightWidget({this.val});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dynamicHeight(context: context, val: val ?? 0.2),
    );
  }
}