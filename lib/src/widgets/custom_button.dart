import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final void Function() onPressed;
  final String text;

  const MyButton({super.key, required this.text, required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(Size(278, 63)),
        backgroundColor:
        MaterialStateProperty.all(Color(0xFF8BC83F)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

}