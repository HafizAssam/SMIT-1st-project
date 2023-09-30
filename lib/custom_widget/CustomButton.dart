import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String buttonText;
  final void Function()? onpressed;
  final Color buttonColor;
  final Color buttonTextColor;
  final double buttontextFontSize;
  const Custombutton({
    super.key,
    required this.buttonText,
    this.onpressed,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.buttontextFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      onPressed: onpressed,
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
          fontSize: buttontextFontSize,
        ),
      ),
    );
  }
}
