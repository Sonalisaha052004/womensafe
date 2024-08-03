import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

import '../../../../../common_widgets/button.dart';



class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children:[
            Container(
              width:double.infinity,
              child: Lottie.asset("assets/otpverification.json",
              height:300.0,
              width:250.0
              ),
            ),
            Stack(
              children: [
                Container(
                  height:size.height *0.45,
                  decoration:BoxDecoration(
                  boxShadow:[
                    BoxShadow(
                      color:Colors.grey.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                      offset:Offset(2.0,5.0),
        
        
                    ),
                  ],
                  ),
               child: Card(
                 shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
        
                 ),
                 elevation: 10.0,
                 margin: EdgeInsets.all(12.0),
                 child:Column(
                   children:[
                     Container(
                       margin:EdgeInsets.only(top:40.0),
                         padding: EdgeInsets.all(20.0),
                         child: RichText(
                           textAlign: TextAlign.center,
                           text: TextSpan(
                             children: <TextSpan>[
                           TextSpan(
                           text: "Verification\n\n",
                             style: TextStyle(
                               fontSize: 22.0,
                               fontWeight: FontWeight.bold,
                               color: Color(0xFF0278AE),
                             ),
                           ),
                               TextSpan(
                                 text: "Enter the OTP send to your mobile number",
                                 style: TextStyle(
                                   fontWeight: FontWeight.normal,
                                   color: Color(0xFF373A40),
                                 ),
                               ),
                             ],
                           ),
        
                         ),
                     ),
        
                Container(
                  padding: EdgeInsets.all(20.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      SizedBox(
                        height:68,
                        width:64,
                        child:TextFormField(
                          onChanged:(value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1){},
                          decoration:const InputDecoration(hintText:'0'),
                          style:Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                          ],
                          
                        ),
                      ),
                      SizedBox(
                        height:68,
                        width:64,
                        child:TextFormField(
                          onChanged:(value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration:const InputDecoration(hintText:'0'),
                          style:Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
        
                        ),
                      ),
                      SizedBox(
                        height:68,
                        width:64,
                        child:TextFormField(
                          onChanged:(value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration:const InputDecoration(hintText:'0'),
                          style:Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
        
                        ),
                      ),
                      SizedBox(
                        height:68,
                        width:64,
                        child:TextFormField(
                          onChanged:(value){
                            if(value.length==1){
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration:const InputDecoration(hintText:'0'),
                          style:Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
        
                        ),
                      )
        
                    ]
                  ),
                ),
        
              ]
            ),
        
        
            ),
            ),
        
            Button(
                size: size,
                text:"Continue",
              press: () {  },
             )
        
        
              ],
            )
          ]
        ),
      )
    );
  }
}
