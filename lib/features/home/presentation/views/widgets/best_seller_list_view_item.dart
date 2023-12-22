import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(

        children: [
          Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                )),
          ),
          const SizedBox( width: 10,),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Harry Potterand',
                style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text('J.K. Rowling',
                style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text('19.9',
                    style: Styles.textStyle20,),
                    Spacer(),
                    RatingBookItem()
            
            
            
                  ],
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}
class RatingBookItem extends StatelessWidget {
  const RatingBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),),
        SizedBox(
          width: 6.3,
          
        ),
        Text('4.8',
          style: Styles.textStyle14,
        )
        

      ],
      
    );
  }
}

