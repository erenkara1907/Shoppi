import 'package:flutter/material.dart';

import '../../base/base_stateless.dart';

class EmptyWidthWidget extends BaseStateless {
  final double val;

  // ignore: use_key_in_widget_constructors
  EmptyWidthWidget(this.val);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dynamicWidth(context: context, val: val),
    );
  }
}