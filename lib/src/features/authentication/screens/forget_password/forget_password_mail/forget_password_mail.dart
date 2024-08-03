import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:womensafe/src/constants/image_strings.dart';
import 'package:womensafe/src/constants/sizes.dart';
import 'package:womensafe/src/constants/text_strings.dart';
import 'package:womensafe/src/features/authentication/screens/form_header_widget.dart';

import '../forget_password_otp/otp_screen.dart';
import '../forget_password_phone/otpscr_phoneemail.dart';
class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    SingleChildScrollView(
      child: Container(
        padding:const EdgeInsets.all(tDefaultSize),
        child:Column(
          children: [
            const SizedBox(height: tDefaultSize*4),
            const FormHeaderWidget(
                image: toForgetPasswordImage,
                title: toForgetPasswordTitle,
                subTitle: tForgetPassowrdSubtitle,
             crossAxisAlignment:CrossAxisAlignment.center,
            heightBetween: 25.0,
            ),
             SizedBox(height:50.0),
           Form(child: Column(
              children: [
                TextFormField(
                  decoration:  InputDecoration(
                    label: Text(tEmail),
                    hintText: tEmail,
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                    border: OutlineInputBorder(
                      borderSide:  BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black, // Default border color
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (e) =>  const VerifyOtpScreen(),
                    ),
                  );
                }, child: const Text("Next"))),
              ],
            )
           )
          ],
        ),
      ),
    ),
    );
  }
}
