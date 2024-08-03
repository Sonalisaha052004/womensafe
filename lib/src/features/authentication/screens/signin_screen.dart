import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:womensafe/src/constants/sizes.dart';
import 'package:womensafe/src/constants/text_strings.dart';
import 'package:womensafe/src/features/authentication/screens/forget_password/forget-password_options/forget_password_model_bottom_sheet.dart';
import 'package:womensafe/src/features/authentication/screens/signup_screen.dart';
import 'package:womensafe/theme/theme.dart';
import 'package:flutter/src/material/icons.dart';
import '../../../common_widgets/custom_scaffold.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignInKey=GlobalKey<FormState>();
  bool rememberPassword=true;


  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child:Column(
        children: [
         const  Expanded(
           flex:1,
            child: SizedBox(
            height:10,
          ),
          ),
          Expanded(
            flex:7,
            child: Container(

          decoration: const BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),

              child: SingleChildScrollView(
                child:Form(
                key:_formSignInKey,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Text('Women Security',
                        style:TextStyle(fontSize: 30.0,
                        fontWeight:FontWeight.w900,
                        color:lightColorScheme.primary,
                        ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                  TextFormField(
                  validator: (value) {
            if (value == null || value.isEmpty) {
            return 'Please enter Email';
            }
            return null;
            },
                decoration: InputDecoration(
                  label: const Text('Email'),
                  hintText: 'Enter Email',
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12, // Default border color
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12, // Default border color
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                  ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: const Text('Password'),
                        hintText: 'Enter Password',
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Default border color
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:[
                     Row(

                       children: [
                         Checkbox(
                           value: rememberPassword,
                           onChanged: (bool? value) {
                             setState(() {
                               rememberPassword = value!;
                             });
                           },
                           activeColor: lightColorScheme.primary,
                         ),
                         const Text(
                           'Remember me',
                           style: TextStyle(

                             color: Colors.black45,
                           ),
                         ),
                       ],
                     ),
                     GestureDetector(

                       child: TextButton(
                         onPressed: (){
                           ForgetPasswordScreen.buildShowModalBottomSheet(context);
                         },
                         child: Text(
                           'Forget password?',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: lightColorScheme.primary,
                           ),
                         ),
                       ),
                     ),
                   ]
                 ),
                const SizedBox(
                height: 25.0,
              ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formSignInKey.currentState!.validate() &&
                            rememberPassword) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Processing Data'),
                            ),
                          );
                        } else if (!rememberPassword) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    'Please agree to the processing of personal data',
                                  style: TextStyle(
                                   fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),)
                            ),
                          );
                        }
                      },
                    child: const Text('Sign in'),
                  ),
                ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.7,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 10,
                          ),
                          child: Text(
                            'Sign up with',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.7,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Logo(Logos.facebook_f),
                        Logo(Logos.twitter),
                        Logo(Logos.google),
                        Logo(Logos.apple),
                      ],
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account? ',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (e) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: lightColorScheme.primary,
                          ),
                        ),
                      ),
                  ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

],
              ),
            ),

          ),),
          ),
        ],

      )


    );
  }


}


