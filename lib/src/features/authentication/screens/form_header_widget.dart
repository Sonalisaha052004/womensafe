import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    this.imageColor,
    this.heightBetween,
    required this. image,
    required this. title,
    required this. subTitle,
    this.imageHeight=0.2,
    this.crossAxisAlignment=CrossAxisAlignment.start,
    super.key});
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image,title,subTitle;
  final CrossAxisAlignment crossAxisAlignment;


  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Column(

      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image),color: imageColor,height: size.height*imageHeight),

        SizedBox(height: heightBetween,),
        Text(
          'Forget Password ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        Text(subTitle,style:Theme.of(context).textTheme.bodyText1),

              ],
    );
  }
}
