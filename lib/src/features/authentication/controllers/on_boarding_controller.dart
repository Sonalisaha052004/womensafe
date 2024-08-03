import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:womensafe/src/constants/colors.dart';
import 'package:womensafe/src/constants/image_strings.dart';
import 'package:womensafe/src/constants/text_strings.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(pages: [Container(
              color:tOnBoardingPage1Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Image(image: AssetImage(tOnBoardingImage1),),
                 Column(
                   children: [
                     Text(tOnBoardingTitle1,style: Theme.of(context).textTheme.headline1),
                     Text(tOnBoardingSubTitle1,textAlign:TextAlign.center,),

                     
                   ],
                 ),

                 Text(tOnBoardingCounter1),
                ],
              ),
          ),
          Container(color: tOnBoardingPage2Color),
          Container(color: tOnBoardingPage3Color),
          ],
          )
        ],
      ),


    );
  }
}
