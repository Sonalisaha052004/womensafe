import 'package:flutter/material.dart';
import 'package:womensafe/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_otp/otp_screen.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
      builder: (context) =>
          Container(padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tForgetPasswordTitle,
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Text(tForgetPassowrdSubtitle, style: Theme
                    .of(context)
                    .textTheme
                    .bodyText2),
                const SizedBox(height: 30.0),

                ForgetPasswordBtnWidget(
                  btnIcon: Icons.mail_outline_rounded,
                  title: tEmail,
                  subTitle: tResetViaEmail,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const ForgetPasswordMailScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 30.0),
                ForgetPasswordBtnWidget(
                  btnIcon: Icons.mobile_friendly_rounded,
                  title: tPhoneNo,
                  subTitle: tResetViaPhone,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const OTPScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),

          ),
    );
  }
}