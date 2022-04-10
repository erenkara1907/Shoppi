import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OutlineTextField extends StatelessWidget {
  final String? labelText;
  final IconData? icons;
  final String? Function(String? data)? onValidator;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool? validate;
  const OutlineTextField(
      {Key? key,
      this.labelText,
      this.icons,
      this.onValidator,
      this.controller,
      this.inputFormatters,
      this.validate,
      this.initialValue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: onValidator,
        initialValue: initialValue,
        inputFormatters: inputFormatters,
        // autovalidate: true,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          icon: Icon(icons),
        ));
  }
}