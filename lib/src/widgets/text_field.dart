import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imtihon_6modul/src/widgets/validation.dart';

class MyTextFields extends StatelessWidget {
  final String hintText;
  final Widget suffixIcon;
  final String? helperText;
  final String? counterText;
  final String? Function(String? value)? validator;
  final void Function(String value)? onChange;
  final TextEditingController? controller;
  final TextInputAction inputAction;

  const MyTextFields({
    super.key,
    required this.hintText,
    required this.suffixIcon,
    this.helperText,
    this.counterText,
    this.validator,
    this.onChange,
    this.controller,
    this.inputAction = TextInputAction.next,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TextFormField(
        controller: controller,
        validator: validator,
        textInputAction: inputAction,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              gapPadding: 4,
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 4,
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontWeight: FontWeight.w300),
            filled: true,
            fillColor: Colors.grey.shade200,
            suffixIcon: suffixIcon,
            helperText: helperText,
            helperStyle: TextStyle(
              color: Color(0xFF1F4C6B),
              fontWeight: FontWeight.w500,
            ),
            counterText: counterText,
            counterStyle: TextStyle(
                color: Color(0xFF1F4C6B), fontWeight: FontWeight.w500)),
      ),
    );
  }
}
