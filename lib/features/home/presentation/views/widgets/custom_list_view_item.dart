import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
class CustomImageView extends StatelessWidget {
  const CustomImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*.45,
      width: MediaQuery.of(context).size.width*.40,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image:
          const DecorationImage(
            fit: BoxFit.fill,
            image:
            AssetImage(
                AssetsData.testImage
            ),
          )

      ),
    );
  }
}