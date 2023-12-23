import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../../constants.dart';
import 'animation_text.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
 late AnimationController animationController;
  late Animation<Offset> animationSlider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();

    @override
    void dispose() {
      super.dispose();

      animationController.dispose();
    }

    animationSlider.addListener(() {
      setState(() {

      });
    });
  }

  void navigateToHomeView() {
    Future.delayed(kTranstionDuration,
        (){

      //Get.to(()=> const HomeView(),transition: Transition.fade,duration: kTranstionDuration);
          GoRouter.of(context).push(AppRouter.kHomeView);
        }
    );
  }

  void initSlidingAnimation() {
    animationController=AnimationController(vsync: this,duration: kTranstionDuration);
    animationSlider =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {

    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       Image.asset(AssetsData.logo),
        AnimationText(animationSlider: animationSlider),



      ],
    );
  }
}
