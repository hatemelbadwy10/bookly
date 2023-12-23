import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Container(
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
      ),
    );
  }
}