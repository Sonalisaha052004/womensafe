import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.size, required this.text, required this.press,
  });

  final Size size;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        margin:EdgeInsets.only(top: size.height *0.38),
        child:SizedBox(
          width:size.width * 0.6,
          height:80.0,
          child:ElevatedButton(

              style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    side:BorderSide(color: Color(0xFF4A90E2)),
                  )
              ),
              onPressed: press,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  Card(
                    color: Color(0xCDA3C5EC),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: SizedBox(
                      width: 35.0,
                      height: 35.0,
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ),

                  ),


                ],

              )


          ),

        ),
      ),


    );
  }
}