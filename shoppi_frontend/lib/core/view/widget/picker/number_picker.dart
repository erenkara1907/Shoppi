import 'package:flutter/material.dart';

import '../../base/base_state.dart';

class NumberPicker extends StatefulWidget {
  final int number;
  final Function(int value)? onChanged;
  final int? maxValue;
  final int? minValue;

  const NumberPicker(
      {Key? key,
      required this.number,
      this.onChanged,
      this.maxValue = 100,
      this.minValue = 0})
      : super(key: key);
  @override
  _NumberPickerState createState() => _NumberPickerState();
}

class _NumberPickerState extends BaseState<NumberPicker> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    number = widget.number;
  }

  ShapeDecoration get shapeDecoration => ShapeDecoration(
      shape: StadiumBorder(
          side: BorderSide(color: Theme.of(context).highlightColor)));

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: shapeDecoration,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: <Widget>[
          deIncerement,
          Text(
            "$number",
            style: currentTheme.textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold,
                color: currentTheme.colorScheme.onSurface),
          ),
          incerement
        ],
      ),
    );
  }

  IconButton get deIncerement => IconButton(
      icon: const Icon(Icons.remove),
      onPressed: () {
        
        number -= number > widget.minValue! ? 0 : 1;
        updateNumber();
      });

  IconButton get incerement => IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {
        number += number <= widget.maxValue! ? 1 : 0;
        updateNumber();
      });

  void updateNumber() {
    setState(() {});
    widget.onChanged!(number);
  }
}