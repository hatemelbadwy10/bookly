import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
class CustomErrorMassage extends StatelessWidget {
  const CustomErrorMassage({super.key, required this.errMassage});
final String errMassage;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        errMassage,style: Styles.textStyle20,
      ),
    );
  }
}
