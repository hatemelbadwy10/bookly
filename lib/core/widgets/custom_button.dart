import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textColor,
    required this.backGroundColor,
    this.borderRadius,
    required this.text, this.onPressed,
  });
  final Color textColor;
  final Color backGroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(12))),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
            ),
          )),
    );
  }
}
