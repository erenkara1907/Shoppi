import 'package:flutter/material.dart';

class NumberCounterWidget extends StatefulWidget {
  final double? value;
  final Function(double val)? onChange;

  const NumberCounterWidget({
    Key? key,
    this.value,
    this.onChange,
  }) : super(key: key);

  @override
  _NumberCounterWidgetState createState() => _NumberCounterWidgetState();
}

class _NumberCounterWidgetState extends State<NumberCounterWidget> {
  double val = 0;
  @override
  void initState() {
    super.initState();
    val = widget.value!;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildEmptyWidget,
        IconButton(icon: const Icon(Icons.add), onPressed: () => valueChanged(true)),
        Text(val.toString()),
        IconButton(
            icon: const Icon(Icons.remove), onPressed: () => valueChanged(false)),
        _buildEmptyWidget
      ],
    );
  }

  SizedBox get _buildEmptyWidget => const SizedBox(width: 10);

  void valueChanged(bool val) {
    if (val) {
      this.val++;
    } else {
      this.val--;
    }
    widget.onChange!(this.val);
    setState(() {});
  }
}